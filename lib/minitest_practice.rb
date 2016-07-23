require "minitest_practice/version"

class Main
  def odd?(n)
    if n % 2 == 1
      return true
    end
  end

  def check_number?(n)
    if n.to_s.length != 4
      return false
    end
    return !(odd?(n))
  end

  def enough_length?(s)
    if s.length <= 8 && s.length >= 3
      return true
    end
  end

  def divide(n, m)
    if n == 0
      return 'divide by 0 is not allowed'
    end
    return m/n
  end

  def fizzbuzz(n)
    fizzbuzz = ['fizzbuzz','','','fizz','','buzz','fizz','','','fizz','buzz','','fizz','','']
    return fizzbuzz[n % 15]
  end

  def greet
    puts("Hello")
  end

end
