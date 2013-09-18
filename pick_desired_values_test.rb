gem 'minitest'
require 'minitest'
require 'minitest/pride'

class PickDesiredValuesTest < Minitest::Test
  def test_pick_even_numbers
    numbers = (1..10)
    evens = numbers.select do |number|
      number.even?
    end
    assert_equal [2, 4, 6, 8, 10], evens
  end

  def test_pick_odd_numbers
    #skip
    numbers = (1..10)
    odds = numbers.select { |n| n.odd? }
    assert_equal [1, 3, 5, 7, 9], odds
  end

  def test_pick_words_with_three_letters
    #skip
    words = %w(pill bad finger cat blue dog table red)
    selected = words.select { |w| w.length == 3 }
    assert_equal %w(bad cat dog red), selected
  end

  def test_pick_words_with_more_than_three_letters
    #skip
    words = %w(pill bad finger cat blue dog table red)
    selected = words.select { |w| w.length > 3 }
    assert_equal %w(pill finger blue table), selected
  end

  def test_pick_words_ending_in_e
    #skip
    words = %w(are you strike thinking belt piece warble sing pipe)
    selected = words.select { |w| w.end_with? "e" }
    assert_equal %w(are strike piece warble pipe), selected
  end

  def test_pick_words_ending_in_ing
    #skip
    words = %w(drought singing hat shoehorning purposeful)
    selected = words.select { |w| w.end_with? "ing" }
    assert_equal %w(singing shoehorning), selected
  end
end

