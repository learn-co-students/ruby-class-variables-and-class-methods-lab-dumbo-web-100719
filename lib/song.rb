require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@all = []
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@all << self
  end

  def self.all
    @@all
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
    genreHash ={}
    @@genres.each do |genre| 
      if genreHash[genre] 
        genreHash[genre] += 1
      else
        genreHash[genre] = 1
      end
    end
    genreHash
    #binding.pry
  end

  def self.artist_count
    artistHash = {}
    @@artists.each do |artists|
      if artistHash[artists]
        artistHash[artists] += 1
      else
        artistHash[artists] = 1
      end
    end
    artistHash
  end


end