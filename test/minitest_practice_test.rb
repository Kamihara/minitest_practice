require 'test_helper'

class MinitestPracticeTest < Minitest::Test
  def setup
    @minitest = Main.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MinitestPractice::VERSION
  end

  def test_method_odd?
    assert @minitest.odd?(3), '3 is odd' 
    refute @minitest.odd?(4), '4 is not odd' 
  end

  def test_method_check_number?
    assert @minitest.check_number?(1234), '1234 OK'
    refute @minitest.check_number?(2345), '2345 NG (odd)'
    refute @minitest.check_number?(345),  '345 NG (insuffcient number of digits)'
  end

  def test_method_enough_length?
    assert @minitest.enough_length?('minitest'), 'OK'
    refute @minitest.enough_length?('minitests'), 'NG (length overflow)'
    assert @minitest.enough_length?('tst'), 'OK'
    refute @minitest.enough_length?('mn'), 'NG (insufficient length)'
  end

  def test_method_devide
    message = "divide by 0 is not allowed"
    assert_equal 2, @minitest.divide(3, 6), '6 / 3 = 2'
    assert_equal 4, @minitest.divide(5, 23), '23 / 5 = 4 ... 3'
    assert_equal message, @minitest.divide(0, 23), 'divide by 0 is not allowed'
  end

  def test_method_fizzbuzz
    assert_equal "fizz", @minitest.fizzbuzz(6), 'return "fizz"'
    assert_equal "buzz", @minitest.fizzbuzz(20), 'return "buzz"'
    assert_equal "fizzbuzz", @minitest.fizzbuzz(90), 'return "fizzbuzz"'
    assert_equal "", @minitest.fizzbuzz(91), 'return ""'
    refute_equal "", @minitest.fizzbuzz(120), 'return ""'
  end

  def test_method_greet
    assert_output("Hello\n") { @minitest.greet }
  end

end
