class Post
    
    attr_accessor :title, :author
    
    @@all = []
    
    def initialize(title)
        @title = title
        self.save
    end
    
    def self.all
        @@all
    end
    
    def save
        @@all << self
    end
    
    def author_name
        Post.author = self
    end    
    
    
end    