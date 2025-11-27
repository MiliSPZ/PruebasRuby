class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    if actual_minutes_in_oven == EXPECTED_MINUTES_IN_OVEN
      return 0
    end
    return EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven 
    raise 'Please implement the Lasagna#remaining_minutes_in_oven method'
  end

  def preparation_time_in_minutes(layers)
    return layers * 2
    raise 'Please implement the Lasagna#preparation_time_in_minutes method'
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    minutes_of_layers = preparation_time_in_minutes(number_of_layers)
    return minutes_of_layers + actual_minutes_in_oven
    raise 'Please implement the Lasagna#total_time_in_minutes method'
  end
end
