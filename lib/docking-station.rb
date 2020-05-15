require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @capacity = 20
    @bikes = []
  end


  def release_bike
    if empty?
      fail "Error, no bike available"
      else
      Bike.new
      @bikes.pop
    end
  end

  def dock(bike)
    if @bikes.length < @capacity
      @bikes << bike
    else
      fail "Error, no free space available"
    end
  end

  def full?
    true
  end

  def empty?
    if @bikes.length < 1
      return true
  end

  end
end
