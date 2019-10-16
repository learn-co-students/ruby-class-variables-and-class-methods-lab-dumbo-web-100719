class Song

attr_reader :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre

  @@count += 1
  @@artists << self.artist
  @@genres << self.genre
end

def self.count
  @@count
end

def self.artists
  @@artists.uniq
  #uniq method allows you to get rid of repeat instances
end

def self.genres
  @@genres.uniq
end

# def self.genre_count
#   genre_count = Hash.new
#   @@genres.each do |genre_name|
#       if genre_count == genre_count[genre_name]
#           genre_count[genre_name] += 1
#       else
#           genre_count[genre_name] = 1
#       end
#     end
#   end

def self.genre_count
  genre_count = Hash.new
  @@genres.each do |genre_name|
      if genre_count[genre_name]
          genre_count[genre_name] += 1
      else
          genre_count[genre_name] = 1
      end
    end
    genre_count
end

def self.artist_count
  artist_count = Hash.new
    @@artists.each do |artist_name|
      # if hash(artist_count) has key(artist_name)
      if artist_count[artist_name]
          # increment value by 1 for each
          artist_count[artist_name] += 1
        else
          # else hash(artist_count) will be created with value of 1
        artist_count[artist_name] = 1
        end
    end
    artist_count
  end







end
