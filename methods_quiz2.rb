module MethodsQuiz2
  
  def without_doubles(dice2, dice3, no_doubles)
    if dice2 == dice3 && no_doubles
      dice2 + dice3 + 1
    else
      dice2 + dice3
    end
  end

  def max_maybe(num1, num2)
    if num1 == num2
      return 0
    elsif num2 % 5 == num1 % 5
      if num1 > num2
        num2
      else
        num1
      end
    elsif num1 > num2
      num1
    elsif num2 > num1
      num2
    end
  end

  def squirrels_play?(temper, summer)
    if summer
      if temper <= 100 && temper >= 60
        return true
      else
        return false
      end
    else
      if temper <= 90 && temper >= 60
        return true
      else
        return false
      end
    end
  end

  def red_ticket(a, b, c)
    if a == 2 && b == 2 && c == 2
      return 10
    elsif (a == 1 && b == 1 && c == 1) || (a == 0 && b == 0 && c == 0)
      return 5
    elsif a != b && a != c
      return 1
    else
      return 0
    end
  end

end