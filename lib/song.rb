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
      song.name = filename.split(" - ")[1]1) Artist #songs lists all songs that belong to this artist
     Failure/Error: Song.all.select {|song| song.artist == self}
     NoMethodError:
       undefined method `artist' for nil:NilClass
     # ./lib/artist.rb:21:in `block in songs'
     # ./lib/artist.rb:21:in `select'
     # ./lib/artist.rb:21:in `songs'
     # ./spec/artist_spec.rb:40:in `block (3 levels) in <top (required)>'
  2) Artist #add_song keeps track of an artist's songs
     Failure/Error: Song.all.select {|song| song.artist == self}
     NoMethodError:
       undefined method `artist' for nil:NilClass
     # ./lib/artist.rb:21:in `block in songs'
     # ./lib/artist.rb:21:in `select'
     # ./lib/artist.rb:21:in `songs'
     # ./spec/artist_spec.rb:52:in `block (3 levels) in <top (required)>'
  3) Artist .find_or_create_by_name always returns an Artist instance
     Failure/Error: artist_1 = Artist.find_or_create_by_name("Michael Jackson")
     NoMethodError:
       undefined method `find_or_create_by_name' for Artist:Class
     # ./spec/artist_spec.rb:60:in `block (3 levels) in <top (required)>'
  4) Artist .find_or_create_by_name finds or creates an artist by name maintaining uniqueness of objects by name property
     Failure/Error: artist_1 = Artist.find_or_create_by_name("Michael Jackson")
     NoMethodError:
       undefined method `find_or_create_by_name' for Artist:Class
     # ./spec/artist_spec.rb:67:in `block (3 levels) in <top (required)>'
  5) Artist .find_or_create_by_name Creates new instance of Artist if none exist
     Failure/Error: artist_1 = Artist.find_or_create_by_name("Drake")
     NoMethodError:
       undefined method `find_or_create_by_name' for Artist:Class1) Artist #songs lists all songs that belong to this artist
     Failure/Error: Song.all.select {|song| song.artist == self}
     NoMethodError:
       undefined method `artist' for nil:NilClass
     # ./lib/artist.rb:21:in `block in songs'
     # ./lib/artist.rb:21:in `select'
     # ./lib/artist.rb:21:in `songs'
     # ./spec/artist_spec.rb:40:in `block (3 levels) in <top (required)>'
  2) Artist #add_song keeps track of an artist's songs
     Failure/Error: Song.all.select {|song| song.artist == self}
     NoMethodError:
       undefined method `artist' for nil:NilClass
     # ./lib/artist.rb:21:in `block in songs'
     # ./lib/artist.rb:21:in `select'
     # ./lib/artist.rb:21:in `songs'
     # ./spec/artist_spec.rb:52:in `block (3 levels) in <top (required)>'
  3) Artist .find_or_create_by_name always returns an Artist instance
     Failure/Error: artist_1 = Artist.find_or_create_by_name("Michael Jackson")
     NoMethodError:
       undefined method `find_or_create_by_name' for Artist:Class
     # ./spec/artist_spec.rb:60:in `block (3 levels) in <top (required)>'
  4) Artist .find_or_create_by_name finds or creates an artist by name maintaining uniqueness of objects by name property
     Failure/Error: artist_1 = Artist.find_or_create_by_name("Michael Jackson")
     NoMethodError:
       undefined method `find_or_create_by_name' for Artist:Class
     # ./spec/artist_spec.rb:67:in `block (3 levels) in <top (required)>'
  5) Artist .find_or_create_by_name Creates new instance of Artist if none exist
     Failure/Error: artist_1 = Artist.find_or_create_by_name("Drake")
     NoMethodError:
       undefined method `find_or_create_by_name' for Artist:Class1) Artist #songs lists all songs that belong to this artist
     Failure/Error: Song.all.select {|song| song.artist == self}
     NoMethodError:
       undefined method `artist' for nil:NilClass
     # ./lib/artist.rb:21:in `block in songs'
     # ./lib/artist.rb:21:in `select'
     # ./lib/artist.rb:21:in `songs'
     # ./spec/artist_spec.rb:40:in `block (3 levels) in <top (required)>'
  2) Artist #add_song keeps track of an artist's songs
     Failure/Error: Song.all.select {|song| song.artist == self}
     NoMethodError:
       undefined method `artist' for nil:NilClass
     # ./lib/artist.rb:21:in `block in songs'
     # ./lib/artist.rb:21:in `select'
     # ./lib/artist.rb:21:in `songs'
     # ./spec/artist_spec.rb:52:in `block (3 levels) in <top (required)>'
  3) Artist .find_or_create_by_name always returns an Artist instance
     Failure/Error: artist_1 = Artist.find_or_create_by_name("Michael Jackson")
     NoMethodError:
       undefined method `find_or_create_by_name' for Artist:Class
     # ./spec/artist_spec.rb:60:in `block (3 levels) in <top (required)>'
  4) Artist .find_or_create_by_name finds or creates an artist by name maintaining uniqueness of objects by name property
     Failure/Error: artist_1 = Artist.find_or_create_by_name("Michael Jackson")
     NoMethodError:
       undefined method `find_or_create_by_name' for Artist:Class
     # ./spec/artist_spec.rb:67:in `block (3 levels) in <top (required)>'
  5) Artist .find_or_create_by_name Creates new instance of Artist if none exist
     Failure/Error: artist_1 = Artist.find_or_create_by_name("Drake")
     NoMethodError:
       undefined method `find_or_create_by_name' for Artist:Class
      song.name = filename.split(" - ")[0]
  end

  def artist_name=(name)

    Artist.find_or_create_by_name(name)

  end
end
