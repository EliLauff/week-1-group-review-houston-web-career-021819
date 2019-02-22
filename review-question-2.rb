# Finish the implementation of the Car class so it has the functionality described below

class Car

    attr_accessor :make,:model
    @@all = []

    def initialize(hash)
        self.make = hash[:make]
        self.model = hash[:model]
        @@all << self
    end

    def drive
        "VROOOOOOOOOOOOM!"
    end

    def self.all
        @@all
    end


end

#volvo_lightning = Car.new("Volvo", "Lightning")
#yugo = Car.new("Zastava", "Yugo")
#lada = Car.new("AvtoVAZ", "Lada")

# volvo_lightning.make
#=> "Volvo"
# volvo_lightning.model
#=> "Lightning"

# volvo_lightning.drive
# => "VROOOOOOOOOOOOM!"

# Car.all
#=> [#<Car:0x00007fae28930f20>, #<Car:0x00007fae28923370>, #<Car:0x00007fae2891ae78>]

#BONUS:

volvo_lightning = Car.new(make: "Volvo", model: "Lightning")
yugo = Car.new(make: "Zastava", model: "Yugo")
lada = Car.new(make: "AvtoVAZ", model: "Lada")

volvo_lightning.make
#=> "Volvo"
volvo_lightning.model
#=> "Lightning"

puts volvo_lightning.make
puts volvo_lightning.model
puts volvo_lightning.drive
puts Car.all