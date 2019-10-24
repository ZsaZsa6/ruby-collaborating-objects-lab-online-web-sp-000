require "pry"
class Artist
    attr_accessor :name
    @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}

  end

  def self.find_or_create_by_name(name)

    if self.all.select { |artist| artist.name == name }.empty?
       Artist.new(name)
    else
      self.all.select { |artist| artist.name == name }[0]
    end
  end

  def print_songs
    # binding.pry
    Artist.all.select {|song| artist.song}
  end
end
