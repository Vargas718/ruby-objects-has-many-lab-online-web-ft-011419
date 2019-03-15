require "pry"

class Artist 
  attr_accessor :name
  
  @@songs = []
  
  def initialize(name)
    @name = name 
  end
  
  def songs
    @@songs
  end 
  
  def add_song(song)
    
    @@songs << song
    song.artist = self
    #binding.pry
  end
  
  def add_song_by_name(title)
    track = Song.new(title) 
    @@songs << track
    track.artist = self
    #binding.pry
   end
   
    def self.song_count
     @@songs.size
     #binding.pry
    end 
   
   
end 