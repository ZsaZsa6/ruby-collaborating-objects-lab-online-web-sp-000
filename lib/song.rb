require "pry"
class Song
    attr_accessor :name, :artist
    @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(filename)
      song = Song.new(name)
      Artist.add_song(filename.split(" - ")[1])
      # binding.pry
      Artist.find_or_create_by_name(filename.split(" - ")[0])
      # name = filename.split(" - ")[0]
      # song.name = filename.split(" - ")[1]
      # song.artist = Artist.add_song(song)
  end

end
