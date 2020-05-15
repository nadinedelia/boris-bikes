require_relative 'bike'

class DockingStation
attr_reader :bike

def initialize
  @capacity = 20
  @bikes = []
end


  def release_bike
if bike.nil?
  fail "Error, no bike available"
  end
  bike
end

  def dock(bike)
    if @bikes.length == @capacity
      fail "Error, no free space available"
    else
    @bikes << bike
end
end
end
