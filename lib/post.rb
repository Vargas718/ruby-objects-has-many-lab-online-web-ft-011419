class Post 
  attr_accessor :author, :title 
  @@all = []
  def initialize(title)
    @title = title 
    @@all << self  
  end 
  
  def self.all
    @@all
  end
  
  def author_name
    if self.author == Author.name
    author 
  else 
    nil
  end
  
  #binding.pry
  end
  
  
  
end 