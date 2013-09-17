gem 'minitest'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindFirstOneTest < Minitest::Test
  Thing = Struct.new(:adjective) do
    def weird?
      adjective == 'weird'
    end
  end

  def test_first_thing
    thing1 = Thing.new('odd')
    thing2 = Thing.new('cool')
    thing3 = Thing.new('weird')
    thing4 = Thing.new('fun')
    thing5 = Thing.new('weird')

    things = [thing1, thing2, thing3, thing4, thing5]

    found = nil
    things.each do |thing|
      # write code here
    end
    assert_equal thing3.object_id, found.object_id
  end

  Unicorn = Struct.new(:color) do
    def pink?
      color == 'pink'
    end
  end

  def test_first_pink_unicorn
    skip
    unicorn1 = Unicorn.new('white')
    unicorn2 = Unicorn.new('sparkly')
    unicorn3 = Unicorn.new('purple')
    unicorn4 = Unicorn.new('pink')
    unicorn5 = Unicorn.new('pink')

    unicorns = [unicorn1, unicorn2, unicorn3, unicorn4, unicorn5]

    # write code here

    assert_equal unicorn4.object_id, found.object_id
  end

  def test_fifth_or_second_to_last_sparkly_unicorn
    skip
    unicorn1  = Unicorn.new('white')
    unicorn2  = Unicorn.new('sparkly')
    unicorn3  = Unicorn.new('purple')
    unicorn4  = Unicorn.new('pink')
    unicorn5  = Unicorn.new('sparkly')
    unicorn6  = Unicorn.new('white')
    unicorn7  = Unicorn.new('purple')
    unicorn8  = Unicorn.new('pink')
    unicorn9  = Unicorn.new('sparkly')
    unicorn10 = Unicorn.new('pink')

    unicorns_a = [unicorn1, unicorn2, unicorn3, unicorn4, unicorn5, 
                  unicorn6, unicorn7, unicorn8, unicorn9, unicorn10]
    
    unicorns_b = [unicorn1, unicorn2, unicorn3, unicorn4, 
                  unicorn6, unicorn7, unicorn8, unicorn9, unicorn10]

    # write code here

    assert_equal unicorn5.object_id, found_a.object_id
    assert_equal unicorn9.object_id, found_b.object_id
  end
end

