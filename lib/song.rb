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
      song = Song.new(filename.split(" - ")[1])
      # name = Artist.add_song(filename.split(" - ")[1])

      artist_name= (filename.split(" - ")[0])
      binding.pry

  end

end
