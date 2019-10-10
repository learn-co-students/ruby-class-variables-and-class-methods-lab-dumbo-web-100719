require "pry"
class Song
    @@artists = []
    @@count = 0
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << @artist
        @@count += 1
        @@genres << @genre
    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        returned_hash = {}
        @@genres.each do |indiv_genre|
            if !returned_hash[indiv_genre]
                returned_hash[indiv_genre] = 0
            end
            returned_hash[indiv_genre] += 1
        end
        returned_hash
    end

    def self.artist_count
        returned_hash = {}
        @@artists.each do |indiv_artist|
            if !returned_hash[indiv_artist]
                returned_hash[indiv_artist] = 0
            end
            returned_hash[indiv_genre] += 1
        end
        returned_hash
    end

end
