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
    # binding.pry
      song = self.new
      song.name = filename.split(" - ")[1]
      song.artist = filename.split(" - ")[0]
  end

  def artist_name=(name)

    Artist.find_or_create_by_name(name)

  end
end
