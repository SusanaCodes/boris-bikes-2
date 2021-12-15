require "docking_station"

describe DockingStation do
 it { is_expected.to respond_to :release_bike }

  it "gives working bike" do
  bike = subject.release_bike 
  expect(bike).to be_working
  end 

  it "docks bike" do
    bike = Bike.new 
    expect(subject.dock(bike)).to eq bike
  end

  describe "release_bike" do
    it "raises an error when there are not bikes" do
      expect{subject.release_bike}.to raise_error "No bikes!"
    end
  end


  # Test not working, need to sort. 
  describe '#dock' do
    it 'raises an error when full' do
      subject.dock(Bike.new)
      expect {subject.dock Bike.new }.to raise_error 'Station full!'
    end
  end
end