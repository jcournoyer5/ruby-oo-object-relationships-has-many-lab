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
       
        
        #array.select {|num| num.even?} => [2,4,6]
    end    
    
    def add_song(song)
        song.artist = self
    end 
    
    def add_song_by_name(song_name)
        song = Song.new
        song.song_name = song_name
        song.artist
    end   
    
    def self.song_count
        @@count.song 
    end 
    
    
end    