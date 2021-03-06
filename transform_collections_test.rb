gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class TransformCollectionsTest < Minitest::Test
  def test_capitalize
    names = %w(alice bob charlie)
    capitalized_names = []
    # write code here
    assert_equal %w(Alice Bob Charlie), capitalized_names
  end

  def test_doubles
    skip
    numbers = [1, 2, 3, 4, 5]
    # write code here
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares
    skip
    numbers = [1, 2, 3, 4, 5]
    # write code here
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths
    skip
    names = %w(alice bob charlie david eve)
    # write code here
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes
    skip
    numbers = [234, 10, 9119, 38881]
    # write code here
    assert_equal %w(00234 00010 09119 38881), zip_codes
  end

  def test_reverse
    skip
    names = %w(alice bob charlie david eve)
    # write code here
    assert_equal %w(ecila bob eilrahc divad eve), backwards
  end

  def test_words_with_no_vowels
    skip
    words = %w(green sheep travel least boat)
    # write code here
    assert_equal %w(grn shp trvl lst bt), without_vowels
  end

  def test_trim_last_letter
    skip
    animals = %w(dog cat mouse frog platypus)
    #write code here
    assert_equal %w(do ca mous fro platypu), trimmed
  end

end

