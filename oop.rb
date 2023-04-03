# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "{*~*}" at the beginning and end of the string



class Unicorn
    
    attr_reader :color, :name
def initialize(name, color = silver)
    @name = name
    @color = "Silver"
end

def say(statement)
    "*~* #{statement} *~*"
end
end

unicorn = Unicorn.new ("Greg")

puts unicorn.say("Where can a unicorn get some fairy dust around here??")



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false


class Vampire
    attr_reader :name, :pet, :thirsty
    def initialize(name, pet = "bat")
        @name = name
        @pet =  pet
        @thirsty = true
    end

    def drinks_blood
        @thirsty = false
    end
end

vamp = Vampire.new("Nandor the Relentless")
puts vamp.name
puts vamp.pet
puts vamp.thirsty

vamp.drinks_blood
puts vamp.thirsty



#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry


class Dragon
    attr_reader :name, :rider, :color, :is_hungry
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @amount_eaten = 0
    end

    def eat
        @amount_eaten += 1
        @is_hungry = false if @amount_eaten >= 4
        end
    end

dragon1 = Dragon.new("Fred", "fast", "red")

dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat

puts dragon1.name
puts dragon1.rider
puts dragon1.color
puts dragon1.is_hungry 


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.



  class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring
    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = false
        @is_old = false
        @has_ring = name == "Frodo"
    end

    def celebrate_birthday
        @age += 1
    if @age >= 101
            @is_adult = false
            @is_old = true
    elsif @age >= 33
                @is_adult = true
                @is_old = false
            end
        end
    end



hobbit1 = Hobbit.new("Frodo", "fearless")

33.times {hobbit1.celebrate_birthday}

puts hobbit1.name
puts hobbit1.disposition
puts hobbit1.age
puts hobbit1.is_adult
puts hobbit1.is_old
puts hobbit1.has_ring