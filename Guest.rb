class Guest

  attr_reader :name, :money, :favourite_song
  attr_writer :money

  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

end
