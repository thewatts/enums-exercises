require './test_helper'

class AreTheyAllTest < Minitest::Test

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false if number != 0
    end
    refute all_zeros
  end

  def test_all_zeros
    #skip
    numbers = [0, 0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each { |n| all_zeros = false if n != 0 }
    assert all_zeros
  end

  def test_all_gone
    #skip
    words = %w(gone gone gone gone gone gone gone)
    all_gone = false
    words.each { |w| all_gone = true if w == "gone" }
    assert all_gone
  end

  def test_not_all_gone
    #skip
    words = %w(gone gone gone gone gone gone gone yepp)
    all_gone = true
    words.each { |w| all_gone = false if w != "gone" }
    refute all_gone
  end

  def test_all_empty
    #skip
    words = ["", "", "", "", ""]
    all_empty = false
    words.each { |w| all_empty = true if w.empty? }
    assert all_empty
  end

  def test_not_all_empty
    #skip
    words = ["full", "", "", "", "", ""]
    all_empty = true
    words.each { |w| all_empty = false unless w.empty? }
    refute all_empty
  end
end

