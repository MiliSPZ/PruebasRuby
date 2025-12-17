class LocomotiveEngineer
  def self.generate_list_of_wagons(*arguments)
    return arguments
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    x, y, z, *rest = each_wagons_id
    combined_one = *z, *missing_wagons ,*rest   
    return *combined_one, *x, *y
  end

  def self.add_missing_stops(routes, **stops)
    routes[:stops] = stops.values
    routes
  end

  def self.extend_route_information(route, more_route_information)
    combined = {**route, **more_route_information}
    combined
  end
end
