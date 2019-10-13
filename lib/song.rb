require 'pry'

class Song

    attr_accessor :name, :artist, :genre, :count, :genre_count

    @@count = 0
    @@genres= []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}



    def initialize (name, artist, genre)
        @@count+=1
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
       
    end
    
    def self.count
    @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end
  
    def self.genre_count
       @@genre_count
    
       @@genres.each do |the_genre|
            if @@genre_count[the_genre]
            @@genre_count[the_genre]+=1
        
            else
            @@genre_count[the_genre]=1
            end
        end
        @@genre_count
    end

    def self. artist_count
        @@artist_count

        @@artists.each do |the_artist|

             if @@artist_count[the_artist]
            @@artist_count[the_artist]+=1
        
            else
            @@artist_count[the_artist]=1
            end
        end
    @@artist_count
end

end
