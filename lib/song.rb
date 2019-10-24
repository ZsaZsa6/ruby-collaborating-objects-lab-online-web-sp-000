require "pry"
class Song
    attr_accessor :name, :artist, :all
    @@all = []

  def initialize(name)
    @name = name
    @@all << all
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    binding.pry
    song = self.new
      song.title = filename.split(" - ")[1]
      song
  end

  def artist_name=(name)
    Artist.find_or_create_by_name


  end
end
