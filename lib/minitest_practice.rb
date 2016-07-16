require "minitest_practice/version"

class Main
  def odd?(n)
    if n % 2 == 1
      return true
    else
      return false
    end
  end

  def check_number?(n)
    if n.to_s.length != 4
      return false
    end
    return !(odd?(n))
  end
end
