require './test_helper'

class AreTheyAllTest < Minitest::Test

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
    end
    refute all_zeros
  end

  def test_all_zeros
    #skip
    numbers = [0, 0, 0, 0, 0, 0, 0, 0]
    all_zeros = numbers.all? { |n| n.zero? }
    assert all_zeros
  end

  def test_all_gone
    #skip
    words = %w(gone gone gone gone gone gone gone)
    all_gone = words.all? { |w| w == "gone" }
    assert all_gone
  end

  def test_not_all_gone
    #skip
    words = %w(gone gone gone gone gone gone gone yepp)
    all_gone = words.all? { |w| all_gone = false if w != "gone" }
    refute all_gone
  end

  def test_all_empty
    #skip
    words = ["", "", "", "", ""]
    all_empty = words.all? { |w| w.empty? }
    assert all_empty
  end

  def test_not_all_empty
    #skip
    words = ["full", "", "", "", "", ""]
    all_empty = words.all? { |w| w.empty? }
    refute all_empty
  end
end

