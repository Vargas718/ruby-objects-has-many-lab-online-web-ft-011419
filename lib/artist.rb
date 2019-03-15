require "pry"

class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
  end
  
  def songs
    @@all
  end 
  
  def add_song(song)
    
    @@all << song
    song.artist = self
    #binding.pry
  end
  
  def add_song_by_name(title)
    track = Song.new(title) 
    @@all << track
    track.artist = self
    #binding.pry
   end
   
    def self.song_count
     @@all.size
     #binding.pry
    end 
   
   
end 