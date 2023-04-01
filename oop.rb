# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "{*~*}" at the beginning and end of the string



class Unicorn
    
    attr_reader :color, :name
def initialize(name)
    @name = name
    @color = "Silver"
end

def say(statement)
    "*~* #{statement} *~*"
end
end

unicorn = Unicorn.new ("Greg")

puts u.say("Where can a unicorn get some fairy dust around here??")



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
    attr_reader :name, :rider, :color :is_hungry
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
    end

    def eat
        @is_hungry = false 
        if eat = 4
        end
    end

    dragon1 = Dragon.new("Jeff")
    puts dragon1.name
   dragon1 = Dragon.new("fast")            # Here I am unsure how to get the console to read different dynamic attributes
   puts dragon1.rider                      # I am also unsure how to incorporate the dragon eating 4 meals
   dragon1 = Dragon.new("green")
   puts dragon1.color

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
    def initialize(name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        @has_ring = name == "Frodo"
    end

    def celebrate_birthday
        @age += 1
        if @age >= 33
            @is_adult = true
            if @age >= 101
                @is_adult = false
                @is_old = true 
            end
        end
    end
end

hobbit1 = Hobbit.new("Frodo", "fearless")
puts hobbit1.name
puts hobbit1.disposition
puts hobbit1.age
puts hobbit1.is_adult
puts hobbit1.is_old
puts hobbit1.has_ring

hobbit1.celebrate_birthday
puts hobbit1.age
puts hobbit1.is_adult
puts hobbit1.is_old

31.times { hobbit1.celebrate_birthday }
puts hobbit1.age
puts hobbit1.is_adult
puts hobbit1.is_old

111.times { hobbit1.celebrate_birthday }
puts hobbit1.age
puts hobbit1.is_adult
puts hobbit1.is_old

puts Hobbit.new("Samwise", "Brave").has_ring