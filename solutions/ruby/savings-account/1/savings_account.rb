module SavingsAccount
  def self.interest_rate(balance)
    if (balance < 1000 && balance >= 0)
      return 0.5
    elsif (balance >= 1000 && balance < 5000)
      return 1.621
    elsif (balance >= 5000)
      return 2.475
    else
      return 3.213
    end
  end

  def self.annual_balance_update(balance)
   tasa = interest_rate(balance)
   return balance * (1 + (tasa/100))
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    return years
  end
end
