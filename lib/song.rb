class Song
    
    attr_accessor :name, :artist
    
    @@all = []
    
    def initialize(name)
        @name = name
        self.save
    end
    
    def self.all
        @@all
    end
    
    def save
        @@all << self
    end
    
    def self.name(name)
        song = Song.new
        song.name = name
    end
    
    
end  