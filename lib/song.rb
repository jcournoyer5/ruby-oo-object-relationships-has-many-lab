class Song
    
    attr_accessor :name, :artist
    
    @@all = []
    
    def initialize(name)
        @name = name
        self.save
    end
    
    def artist=(artist)
        @artist = artist
        Artist.count += 1
    end  
    
    def artist
        @artist
    end    
    
    def self.all
        @@all
    end
    
    def save
        @@all << self
    end
    
    
    
    
end  