class Author
    
    @@post_count = 0
    
    attr_accessor :name, :post
    
    def initialize(name)
       @name = name
       @@post_count += 1
    end   
    
    def self.new_author_name(name)
        author = Author.new
        author.name = name
    end
    
    def self.posts
    end
    
    def self.add_post(post)
        
    end
    
    def self.add_post_by_title
    end
    
    def self.post_count
        @@post_count
    end
    
    
end    