# require_relative 'bike'
#
# class DockingStation
#
#   def initialize
#     @bikes = []
#   end
#
#   def release_bike
#     fail 'No bikes available' if @bikes.empty?
#     @bikes.pop
#   end
#
#   def dock(bike)
#     fail 'There is no room to dock your bike' if @bikes.count >= 20
#     @bikes << bike
#   end
#
#   def bike
#     @bike
#   end
#
# end
