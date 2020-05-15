require_relative 'bike'

class DockingStation
attr_reader :bikes

def initialize
  @capacity = 20
  @bikes = []
end


  def release_bike
    if @bikes.length >= 1
      Bike.new
      @bikes.pop
    else
      fail "Error, no bike available"
    end

  end

  def dock(bike)
    if @bikes.length < @capacity
      @bikes << bike
    else
      fail "Error, no free space available"
    end
  end
end
