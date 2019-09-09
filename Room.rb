class Room

  attr_reader :name, :size, :room_songs, :entry_fee, :room_guests

  def initialize(name, size, room_songs, entry_fee, room_guests)
    @name = name
    @size = size
    @room_songs = []
    @entry_fee = entry_fee
    @room_guests = []
  end

  def add_song(song)
    @room_songs.push(song)
  end

  def guest_count()
    @room_guests.count()
  end

  # def check_guest_has_enough_money(guest)
  #   @entry_fee <= guest.money()
  # end

  def check_in_guests(guest)
    @room_guests.push(guest)
  end

  # def check_in_guests(guest)
  #   if @entry_fee <= guest.money() && @size > @room_guests
  #     @room_guests.push(guest)
  #     guest.money() -= @entry_fee
  #   elsif @entry_fee > guest.money()
  #     return "You don't have enough money for this room!"
  #   elsif @size <= @room_guests
  #     return "There isn't enough space in the rooom!"
  #   end
  # end

  def check_out_guests(guest)
    @room_guests.delete(guest)
  end

# def favourite_song_available(guest)
#   for song in room_songs
#     if song == guest.favourite_song()
#       return "Whoo!"
#     end
#   end
# end

end
