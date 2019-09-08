require("minitest/autorun")
require("minitest/rg")
require_relative("../Guest.rb")
require_relative("../Room.rb")
require_relative("../Song.rb")

class TestSong < MiniTest::Test

  def setup()
    @song1 = Song.new("Jesus Built My Hotrod")
    @song2 = Song.new("O Fortuna")
    @song3 = Song.new("Jump Around")
  end

  def test_name()
    assert_equal("O Fortuna", @song2.name())
  end

end
