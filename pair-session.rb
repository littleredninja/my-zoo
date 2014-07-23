class Zoo

  def initialize
    @pen = []
  end

  def add_to_zoo(animal)
    @pen << animal
    @pen
  end

end

class Habitat

  def initialize(info = {})
    @landscape = info[:landscape]
    @plants    = info[:plants]
  end

end

class Animal
  attr_reader :name, :species, :food, :number_of_legs, :word, :habitat, :landscape, :plants

  def initialize(info = {})
    @name           = info[:name]
    @species        = info[:species]
    @food           = info[:food]
    @number_of_legs = info[:legs]
    @word           = info[:word]
    @landscape      = info[:landscape]
    @plants         = info[:plants]
    @habitat        = Habitat.new({:landscape => @landscape, :plants => @plants})
  end

  def talk
    puts "#{word}! " * 2
  end

  def eat
    puts "#{name} the #{species} likes to eat #{food}."
  end

  def animal_landscape
    puts "#{name} the #{species} lives in a #{landscape} with #{plants}."
  end

end

hash = { name:    'Bailey',
         species: 'Cat',
         food:    'fish',
         legs:     4,
         word:    'meow',
         landscape: 'houses',
         plants: 'houseplants' }

bailey = Animal.new(hash)

hash2 = { name:    'Fred',
         species: 'Giraffe',
         food:    'leaves',
         legs:     4,
         word:    'hello',
         landscape: 'plain',
         plants: 'grass' }

fred = Animal.new(hash2)
# bailey.talk

# bailey.eat
# p bailey.food
# p bailey.habitat
# bailey.animal_landscape
chicago_zoo = Zoo.new
chicago_zoo.add_to_zoo(bailey)
chicago_zoo.add_to_zoo(fred)
p chicago_zoo

