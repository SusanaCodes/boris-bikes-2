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

  # it {is_expected.to respond_to(:dock).with(1).argument}

end