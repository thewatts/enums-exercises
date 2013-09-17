require './test_helper'

class BasicEnumsTest < Minitest::Test
  def test_many_times
    s = ''
    5.times do
      # write code here
      s << "x"
    end
    assert_equal 'xxxxx', s
  end

  def test_simple_sum
    #skip
    sum = 0
    numbers = [1, 2, 3, 4, 5]
    numbers.each { |num| sum += num }
    assert_equal 15, sum
  end
  
end

