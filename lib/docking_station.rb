require_relative 'bike'

class DockingStation

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    raise 'There is no room to dock your bike' if !bike
    @bike = bike
  end

  def bike
    @bike
  end

end
