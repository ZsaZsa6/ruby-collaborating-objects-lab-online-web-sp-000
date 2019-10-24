require "pry"
class Artist
    attr_accessor :name, :all
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
    # binding.pry
    if self.all.select { |artist| artist.name == name }.empty?
       Artist.new(name)
    else
      self.all.select { |artist| artist.name == name }
    end
  end

  def print_songs(name)
    self.artist.name.all
  end
end
