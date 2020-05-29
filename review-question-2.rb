# Finish the implementation of the Car class so it has the functionality described below

class Car
    attr_accessor :make, :model

    @@all = []

    def initialize(make: val1, model: val2)
        @make = make
        @model = model

        self.class.all << self
    end

    def self.drive
        puts "VROOOOOOOOOOOOM!"
    end

    def self.all
        @@all
    end
end

# we did the bonus so these three declarations will not work as is -- but we tested them I promise

volvo_lightning = Car.new("Volvo", "Lightning")
yugo = Car.new("Zastava", "Yugo")
lada = Car.new("AvtoVAZ", "Lada")

volvo_lightning.make
# #=> "Volvo"
volvo_lightning.model
#=> "Lightning"

Car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [#<Car:0x00007fae28930f20>, #<Car:0x00007fae28923370>, #<Car:0x00007fae2891ae78>]

# BONUS:

volvo_lightning = Car.new(make: "Volvo", model: "Lightning")

p volvo_lightning.make
#=> "Volvo"
p volvo_lightning.model
#=> "Lightning"
