module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE
  
  def self.get_identifier(city)
     city[0, 4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    string_ship = ship_identifier.to_s[0, 3]
    string_ship == "OIL" || string_ship[0, 3] == "GAS" ? :A : :B
  end
end
