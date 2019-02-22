# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

class User
    attr_accessor :name, :photos
    @@all = []

    def initialize(name)
        self.name = name
        self.photos = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_photo(new_photo)
        new_photo.user = self
        self.photos << new_photo
    end
    
    
end

class Photo
    attr_accessor :user, :comments
    @@all = []

    def initialize
        self.comments = []
        @@all << self
    end

    def make_comment(comment)
        new_comment = Comment.new(comment)
        self.comments << new_comment
    end

    def self.all
        @@all
    end


end

class Comment

    attr_reader :string
    @@all = []

    def initialize(string)
        @string = string
        @@all << self
    end

    def self.all
        @@all
    end

end

sophie = User.new("Sophie")
sandwich_photo = Photo.new
sophie.add_photo(sandwich_photo)
answer1 = sandwich_photo.user.name
puts answer1
# => "Sophie"
answer2 = sophie.photos
puts answer2
# => [#<Photo:0x00007fae2880b370>]


answer3 = sandwich_photo.comments
puts answer3
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
answer4 = sandwich_photo.comments
puts answer4

# => [#<Comment:0x00007fae28043700>]

answer5 = Comment.all
puts answer5
#=> [#<Comment:0x00007fae28043700>]
