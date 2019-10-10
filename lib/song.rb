class Song

@@count = 0
@@artists = []
@@genres = []

attr_accessor :artist, :name, :genre

def initialize(name, artist, genre)
@artist = artist 
# unless @@artists.include?(@artist)
@@artists << @artist
# end
@name = name
@genre = genre
@@genres << genre
@@count += 1
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
    genre_counter = Hash.new(0)
    @@genres.each {|genre_item| genre_counter[genre_item] += 1}
    genre_counter
end

def self.artist_count 
    artist_counter = Hash.new(0)
    @@artists.each {|artist_item| artist_counter[artist_item] += 1}
    artist_counter
end

end