require 'docking-station'
require 'bike'

describe DockingStation do
  describe 'release_bike' do
    it 'should return the bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike.working?).to eq(true)
    end
    it 'throws error when empty' do
      expect { (subject.release_bike) }.to raise_error("Error, no bike available")
    end
  end

  describe 'dock' do
    docking_station = DockingStation.new
    it 'dock a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to be_instance_of(Array)
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to be_instance_of(Array)
    end

      it 'throws error when full' do
        # bike = Bike.new
        # subject.dock(bike)
        20.times {subject.dock(Bike.new)}
        expect { subject.dock(Bike.new) }.to raise_error("Error, no free space available")
      end

      describe 'full?' do
        it 'checks if station is full' do
        20.times {subject.dock(Bike.new)}
        expect(subject.full?).to eq(true)
        end

        describe 'empty?' do
          it 'checks if station is empty' do
          expect(subject.empty?).to eq(true)
          end

end
  end
end
  # it 'releases working bikes' do
  #   bike = Bike.new
  #   expect(bike.working?).to eq(true)
  # end
  # it 'docks something' do
  #   bike = Bike.new
  #   expect(subject.dock(bike)).to eq bike
  # end


end
