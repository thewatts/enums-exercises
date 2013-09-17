require './test_helper'

class AreThereAnyTest < Minitest::Test
  def test_has_a_zero
    numbers = [2, 9, 3, 1, 0]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number == 0
    end
    assert has_zero
  end

  def test_has_zeros
    #skip
    has_zero = false
    numbers = [3, 1, 0, 7, 9, 0]
    numbers.each { |n| has_zero = true if n == 0 }
    assert has_zero
  end

  def test_does_not_have_zero
    #skip
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    numbers.each { |n| has_zero = true if n == 0 } 
    refute has_zero
  end

  def test_no_alice
    #skip
    names = %w(chuck charlene cory chris carl)
    has_alice = false
    names.each { |name| has_alice = true if name == "alice" }
    refute has_alice
  end

  def test_has_alice
    #skip
    names = %w(bill bob burton alice brandon)
    has_alice = false
    names.each { |name| has_alice = true if name == "alice" }
    assert has_alice
  end
end

