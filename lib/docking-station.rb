require_relative 'bike'

class DockingStation
attr_reader :bike

  def release_bike
if bike.nil?
  fail "Error, no bike available"
  else @bike
  end

  def dock(bike)
    @bike = bike

  end
end
end
