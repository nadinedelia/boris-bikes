require 'docking-station'

describe DockingStation do
  it 'releases working bikes' do
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
it 'returns docked bikes' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike
end

  it 'throws error when empty' do
    expect { (subject.release_bike) }.to raise_error("Error, no bike available")
  end
end
