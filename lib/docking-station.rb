require_relative 'bike'

class DockingStation
attr_reader :bike

  def release_bike
if bike.nil?
  fail "Error, no bike available"
  end
  @bike
end

  def dock(bike)
    if @bike
      fail "Error, no free space available"
        end
    @bike = bike
end
end
