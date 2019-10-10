require 'pry'

class Song

#   attr_accessor 

@@count = 0
@@artists = []
@@genres = []

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
    genre_hash = Hash.new
    @@genres.each do |genre|
        genre_hash[genre] ||= 0
        genre_hash[genre] += 1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new
    @@artists.each do |artist|
        artist_hash[artist] ||= 0
        artist_hash[artist] += 1
    end
    artist_hash
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end


end
