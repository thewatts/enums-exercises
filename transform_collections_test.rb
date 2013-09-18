require './test_helper'

class TransformCollectionTest < Minitest::Test
  def test_capitalize
    names = %w(alice bob charlie)
    capitalized_names = names.map { |name| name.capitalize }
    assert_equal %w(Alice Bob Charlie), capitalized_names
  end

  def test_doubles
    #skip
    numbers = [1, 2, 3, 4, 5]
    doubles = numbers.map { |num| num*2 }
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares
    #skip
    numbers = [1, 2, 3, 4, 5]
    squares = numbers.map { |num| num**2 }
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths
    #skip
    names = %w(alice bob charlie david eve)
    lengths = names.map { |name| name.length }
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes
    #skip
    numbers = [234, 10, 9119, 38881]
    zip_codes = numbers.map do |zip|
      zip.to_s.rjust(5, "0")
    end
    assert_equal %w(00234 00010 09119 38881), zip_codes
  end

  def test_reverse
    #skip
    names = %w(alice bob charlie david eve)
    backwards = names.map { |name| name.reverse }
    assert_equal %w(ecila bob eilrahc divad eve), backwards
  end
end

