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

end
