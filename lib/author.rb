require 'pry'
require_relative "post.rb"

class Author

attr_accessor :name

def initialize(name)
    @name = name
end

def add_post(post_object)
    post_object.author = self
end

def posts
    Post.all.select {|post| post.author == self}
end

def self.post_count
    Post.all.count
  end
                         
def add_post_by_title(title)
 post = Post.new(title)  
 post.author = self            
end




end