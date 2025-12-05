module Chess
  # TODO: define the 'RANKS' constant
  # TODO: define the 'FILES' constant

  RANKS = Range.new(1, 8)
  FILES = Range.new('A', 'H')

  def self.valid_square?(rank, file)
    RANKS.include?(rank.to_i) && FILES.include?(file) ? true : false
  end

  def self.nickname(first_name, last_name)
    first_two = first_name[0, 2]      
    last_two = last_name[-2, 2]      
  
    (first_two + last_two).upcase
  end


  def self.move_message(first_name, last_name, square)
    if valid_square?(square[1], square[0]) 
    
      "#{nickname(first_name, last_name)} moved to #{square}"
    else 
      "#{nickname(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
