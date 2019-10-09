class Song 
    
    attr_reader :name,:artist,:genre
     
    @@count = 0 
    @@artists = []
    @@genres =[]
    
    def initialize(name,artist,genre)
      @name=name
      @artist=artist 
      @genre = genre
      
      @@count +=1
      
      @@artists << artist
      
      @@genres << genre
      
    end 
    
    def self.count
      @@count
      
    end  
    
    def self.genres 
      @@genres.uniq{|u_genre|u_genre}
    end
    
    def self.artists
      @@artists.uniq{|u_artists|u_artists}
    end  
    
    def self.genre_count
     @@genres.inject(Hash.new(0)){
       |genre,i|  genre[i] +=1 ; genre
     }
     end
     
     def self.artist_count
       @@artists.inject(Hash.new(0)){
         |artist,i| artist[i]+=1;artist
       }

    end
  
end

