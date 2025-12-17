class LocomotiveEngineer
  def self.generate_list_of_wagons(*arguments)
    return arguments
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, third, *rest = each_wagons_id 
    [third, *missing_wagons, *rest, first, second]
  end

  def self.add_missing_stops(routes, **stops)
    {**routes, stops: stops.values }
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
