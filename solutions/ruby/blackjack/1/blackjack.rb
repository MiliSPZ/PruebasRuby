module Blackjack
  def self.parse_card(card)
   case card
     when "ace" then 11
     when "two" then 2
     when "three" then 3
     when "four" then 4
     when "five" then 5
     when "six" then 6
     when "seven" then 7
     when "eight" then 8
     when "nine" then 9
     when "ten", "jack", "queen", "king"  then 10
     else 0
   end
  end

  def self.card_range(card1, card2)
    sum = parse_card(card1) + parse_card(card2)
    case sum
      when 4..11 then "low"
      when 12..16 then "mid"
      when 17..20 then "high"
      when 21 then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    if card1 == "ace" && card2 == "ace"
      return "P"
    end

    if card_range(card1, card2) == "blackjack" && (parse_card(dealer_card) != 10 && parse_card(dealer_card) != 11)
      return "W"
    end

    if card_range(card1, card2) == "blackjack" && (parse_card(dealer_card) == 10 || parse_card(dealer_card) == 11)
      return "S"
    end

    if card_range(card1, card2) == "high" 
       return "S"
    end

    if card_range(card1, card2) == "mid" && parse_card(dealer_card) < 7
      return "S"
    else
      return "H"
    end

    if card_range(card1, card2) == "low"
      return "H"
    end
  end
end
