class Weapons
    attr_accessor :damage
#    attr_accessor :name
    def initialize 
        @damage = rand(10..30)      
    end
end
class Enemies
    attr_accessor :health
    attr_accessor :strength
    def initialize 
        @health = rand(50..80)
        @strength = rand(10..25)
    end
end
class Path
    attr_accessor :direction
    attr_accessor :num_of_enemies
    attr_accessor :num_of_health
    attr_accessor :num_of_weapons
    def initialize(direction)
        @direction = direction
        @num_of_enemies = num_of_enemies
        @num_of_health = num_of_health
        @num_of_weapons = num_of_weapons
    end
    def move 
        move = gets.chomp
        if move == "left"
            @num_of_enemies = rand(0..3)
            @num_of_health = rand(0..3)
            @num_of_weapons = rand(0..2)
            puts "There are #{@num_of_enemies} enemies, #{@num_of_health} Healths, #{@num_of_weapons} weapons on your path"
            battle
        end
    end
end
class Hero
    attr_accessor :name
    attr_accessor :health
    attr_accessor :strength
    def initialize(name, health, strength)
        @name = name
        @health = 100
        @strength = 10
    end
end
def battle
    puts "Would you like to Fight or Run"
    choice = gets.chomp.downcase
    if choice == "run"
        heroName.health = heroName.health - 20
        puts "You have chosen to run, but got hurt. You now have #{heroName.health}"
    end
end
    

puts "Welcome to your adventure. Give your hero a name"
heroName = gets.chomp
heroName = Hero.new(heroName,100,10)
puts "Hey, #{heroName.name} you have #{heroName.health} health and #{heroName.strength} strength. Where would you like to go? Left or Right?"
left = Path.new("left")
right = Path.new("right")
left.move
