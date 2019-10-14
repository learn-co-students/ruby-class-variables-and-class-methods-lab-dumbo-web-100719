class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artist = []
    @@genre = []
    @@all = []
  
    def initialize(name, genre, artist)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@all << self
    end
    
  
    def self.count
      @@count
    end
    
    def self.genre
        @@genre.uniq
    end
    

  end
  
  
  halo_song = Song.new("halo", "pop", "beyonce")
  promise = Song.new("Promise of a New Day", "pop", "Paula Abdul")
  
  
  puts Song.all