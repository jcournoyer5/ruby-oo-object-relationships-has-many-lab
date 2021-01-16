class Artist
    
    attr_accessor :name
    
    def initialize(name)
       @name = name
    end   
    
    def self.new_artist_name(name)
        artist = Artist.new
        artist.name = name
    
    end
    
    def self.songs(song)
        
    end    
    
    def self.add_song(song)
        song.artist
    end 
    
    def self.add_song_by_name(song_name)
        song = Song.new
        song.song_name = song_name
        song
    end    
    
    
end    