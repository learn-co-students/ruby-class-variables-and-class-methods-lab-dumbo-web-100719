require 'pry'
class Song
  # binding.pry
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << self.artist
    @@genres << self.genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    # create Hash with value pairs set to 0
    genre_hash = Hash.new(0)
    @@genres.each {|genre_item| genre_hash[genre_item]+=1 }
    genre_hash
  end

  def self.artist_count
    artists_hash = Hash.new(0)
    @@artists.each {|artists_item| artists_hash[artists_item]+=1}
    artists_hash
  end

end