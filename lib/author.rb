class Author 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name 
    
  end
  
  def posts 
    @@all 
  end 
    
  def add_post(post)
    
    @@all << post
    post.author = self
    #binding.pry
  end
  
   def add_post_by_title(title)
    article = Post.new(title) 
    @@all << article
    article.author = self
    #binding.pry
   end
   
    def self.post_count
     @@all.size
     #binding.pry
    end 
   
  

end 