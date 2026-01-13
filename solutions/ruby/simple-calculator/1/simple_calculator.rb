class SimpleCalculator
  class UnsupportedOperation < StandardError 
  end
  
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
      raise ArgumentError
    end

    unless ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation
    end

    begin
      result =
        case operation
        when '+' then first_operand + second_operand
        when '/' then first_operand / second_operand
        when '*' then first_operand * second_operand
        end

      "#{first_operand} #{operation} #{second_operand} = #{result}"
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    end
  end
end
