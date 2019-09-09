require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../Guest.rb")
require_relative("../Room.rb")
require_relative("../Song.rb")

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new("Karaoke", 4, 30)

    @song1 = Song.new("Jesus Built My Hotrod")
    @song2 = Song.new("O Fortuna")
    @song3 = Song.new("Jump Around")

    @songs = [@song1, @song2, @song3]

    @guest1 = Guest.new("Jimmy", 40, "It's a kind of magic")
    @guest2 = Guest.new("Akira", 60, "A Holiday in Cambodia")
    @guest3 = Guest.new("Francisco", 80, "O Fortuna")

    @guests = [@guest1, @guest2, @guest3]
  end

  def test_name()
    assert_equal("Karaoke", @room.name())
  end

  def test_size()
    assert_equal(4, @room.size())
  end

  def test_room_songs()
    assert_equal([], @room.room_songs())
  end

  def test_entry_fee()
    assert_equal(30, @room.entry_fee())
  end

  def test_room_guests()
    assert_equal([], @room.room_guests())
  end

  def test_add_song()
    @room.add_song(@song3)
    # binding.pry
    assert_equal([@song3], @room.room_songs())
    # added_song = @room.add_song(@song3)
    # assert_equal(added_song, @room.room_songs())
  end

  def test_guest_count()
    assert_equal(0, @room.guest_count())
  end

  def test_check_in_guests()
    # @room.check_in_guests(@guests)
    # assert_equal(3, @room.guest_count())
    @room.check_in_guests(@guest3)
    assert_equal(1, @room.guest_count())
    # added_guests = @room.check_in_guests(@guest3)
    # assert_equal(added_guests, @room.room_guests())
    # assert_equal(30, @guest3.money())
  end

  def test_check_out_guests()
    # @room.check_in_guests(@guests)
    @room.check_in_guests(@guest1)
    @room.check_in_guests(@guest2)
    @room.check_in_guests(@guest3)
    @room.check_out_guests(@guest2)
    # remaining_guests = @room.check_out_guests(@guest2)
    # assert_equal(remaining_guests, @room.room_guests())
    assert_equal(2, @room.guest_count)
  end

  def test_check_guest_has_enough_money()
    assert_equal(true, @room.check_guest_has_enough_money(@guest3))
  end

  # def test_charge_guest()
  #   assert_equal(30, @guest3.money())
  # end

  def test_favourite_song_available()
    @room.add_song(@song1)
    @room.add_song(@song2)
    @room.add_song(@song3)
    assert_equal("Whoo!", @room.favourite_song_available(@guest3))
  end



end
