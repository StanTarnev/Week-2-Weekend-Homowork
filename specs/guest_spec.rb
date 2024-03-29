require("minitest/autorun")
require("minitest/rg")
require_relative("../Guest.rb")
require_relative("../Room.rb")
require_relative("../Song.rb")

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Jimmy", 40, "It's a kind of magic")
    @guest2 = Guest.new("Akira", 60, "A Holiday in Cambodia")
    @guest3 = Guest.new("Francisco", 80, "O Fortuna")

    @guests = [@guest1, @guest2, @guest3]
  end

  def test_name()
    assert_equal("Francisco", @guest3.name())
  end

  def test_money()
    assert_equal(40, @guest1.money)
  end

end
