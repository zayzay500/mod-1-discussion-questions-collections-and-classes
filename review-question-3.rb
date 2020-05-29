# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
class User
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def photos
        Photo.all.select {|photo| photo.user == self}
    end

    def self.all
        @@all
    end
end

class Photo
    attr_accessor :user

    @@all = []

    def initialize
        self.class.all << self
    end

    def comments
        Comment.all.select {|comment| comment.photo == self}
    end

    def make_comment(message)
        Comment.new(message, self)
    end

    def self.all
        @@all
    end
end

class Comment
    attr_accessor :message, :photo

    @@all = []

    def initialize(message, photo)
        @message = message
        @photo = photo
        self.class.all << self
    end

    def self.all
        @@all
    end
end

sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
p sophie.photos
# => [#<Photo:0x00007fae2880b370>]


p sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
p sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

p Comment.all
#=> [#<Comment:0x00007fae28043700>]
