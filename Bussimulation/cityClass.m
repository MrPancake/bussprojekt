classdef cityClass < handle
   properties (SetAccess = private)
      buses Bus
      roads Road
      busSpawner Spawner
   end
   methods
       function obj = cityClass(standardBus,spawnRate,initialBuses, initialRoads)
         if nargin > 0
            obj.busSpawner = Spawner(spawnRate,standardBus); 
         end
         if nargin > 2   
            obj.buses = initialBuses;
            obj.roads = initialRoads;
         end
      end
      
      function createBus(obj,location, road, velocity, acceleration, breakspeed, bussLength)
          newBus = Bus(location, road, velocity, acceleration, breakspeed, bussLength);
          obj.buses = [newBus,obj.buses];
      end
      
      function createRoad(obj,start, finish, velocity)
          newRoad = Road(start, finish, velocity);
          obj.roads = [newRoad,obj.roads];
      end
      function tick(obj)
          for bus = obj.buses
              bus.changeVelocity(obj.roads(bus.road).velocity)
          end
      end
      
      function roadWork()
         if nargin > 0
            obj.Prop = val;
         end
      
         
      end
   end
end
