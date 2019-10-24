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

  def self.new_by_filename(filename)
      song = Song.new(name)
      # binding.pry
      song.artist = filename.split(" - ")[0]
      song.name = filename.split(" - ")[1]
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end
