require "pry"

class Artist
    
    attr_accessor :name, :song
    

    @@count = 0
    
    def initialize(name)
       @name = name
       @@count += 1
    end   
    
    def self.new_artist_name(name)
        artist = Artist.new
        artist.name = name
    
    end
    
    def self.all
        @@songs
    end

    def save
        @@songs << self
    end
    
    def songs
        Song.all.select {|song| song.artist == self}
    end    
    
    def add_song(song)
        song.artist = self
    end 
    
    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end  
    
    def self.song_count
        @@count.
    end
    
    
    end    
end    