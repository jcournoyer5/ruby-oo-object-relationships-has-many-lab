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
    
    def posts
         Post.all.select {|post| post.author == self}
    end
    
    def add_post(post)
        post.author = self
    end
    
    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end
    
    def self.post_count
        Post.all.length
    end
    
    
end    