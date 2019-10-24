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
    song = self.new
    # binding.pry
      MP3Importer.files
      song.name = filename.split(" - ")[1]
      song.artist = filename.split(" - ")[0]
  end

  # def artist_name=(name)
  #   Artist.find_or_create_by_name
  #
  #
  # end
end
