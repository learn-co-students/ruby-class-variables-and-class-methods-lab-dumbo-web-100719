require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    # class variables
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        # class method that will return the count in the class
        @@count
    end

    def self.genres
        # @@genres.uniq{|genre| genre}
        @@genres.uniq
    end


    def self.artists
        # @@artists.uniq{|artist| artist}
        @@artists.uniq
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |a|
            artist_count[a] ||= 0
            artist_count[a] += 1
        end
        artist_count

    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |g|
            genre_count[g] ||= 0
            genre_count[g] += 1
        end
        genre_count

    end
end

song_1 = Song.new("hit me baby one more time", "Brittany Spears", "pop")
song_2 = Song.new("99 Problems", "Jay-Z", "rap")
song_3 = Song.new("Lucifer", "Jay-Z", "rap" )

# binding.pry