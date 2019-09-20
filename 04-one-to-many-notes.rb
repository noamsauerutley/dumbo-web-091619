require 'pry'

class User

  attr_accessor :username, :bio
  
  def initialize(username, bio)
    @username = username
    @bio = bio
  end

end

class Tweet
  # time and author shouldn't be editable
  attr_reader :author, :timestamp
  # content can be altered
  attr_accessor :content
  def initalize(author, content)
    #author is a user instance
    #this is just drawing out the blueprints
    #don't worry about assigning specific variables yet
    #this is just setting up the method, not running a specific instance
    
    @author = author
    @content = content
    @timestamp = Time.now
  end

end

coffee_dad = User.new("coffee_dad", "just a dad who likes his coffee")
bodega_cats = User.new("bodega_cats", "i like cats")

# Tweet.new(author, content)
cd1 = Tweet.new(coffee_dad, "coffee#")
cat1 = Tweet.new(bodega_cats, "meow meow")
cd2 = Tweet.new(coffee_dad, "death is inevitable")
# coffee_dad instance variable points to the User  @username, so you aren't just passing the string in directly
binding.pry
0
