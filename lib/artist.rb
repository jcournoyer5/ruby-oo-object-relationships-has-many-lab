class Artist
    
    attr_accessor :name, :song
    
    @@songs = []
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
        @@songs
    end    
    
    def self.add_song(song)
        song.artist
    end 
    
    def self.add_song_by_name(song_name)
        song = Song.new
        song.song_name = song_name
        song.artist
    end   
    
    def self.song_count
        @@count.song 
    end 
    
    
end    