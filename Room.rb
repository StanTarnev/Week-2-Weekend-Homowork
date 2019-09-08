class Room

  attr_reader :name, :room_songs, :room_guests

  def initialize(name, room_songs, room_guests)
    @name = name
    @room_songs = []
    @room_guests = []
  end

  def add_song(song)
    @room_songs.push(song)
  end

  def guest_count()
    @room_guests.count()
  end

  def check_in_guests(song)
    @room_guests.push(song)
  end

  def check_out_guests(guest)
    @room_guests.delete(guest)
  end

end
