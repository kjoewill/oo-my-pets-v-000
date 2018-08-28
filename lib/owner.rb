class Owner
  
  @@all = []
  
  attr_accessor :name, :pets
  attr_reader :species
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats=> []}
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.size 
  end
  
  def say_species 
    "I am a #{self.species}."
  end
  
  #create fish with name and add to pets hash 
  #maintain referantial integrity
  def buy_fish(name)
    fish = Fish.new(name)
    fish.owner = self
    self.pets[:fishes] << fish
  end
  
  
  def buy_cat(name)
    cat = Cat.new(name)
    cat.owner = self
    self.pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    dog.owner = self
    self.pets[:dogs] << dog
  end
  
  def walk_dogs
    self.pets[:dogs].each { |e| e.mood = "happy" }
  end
  
  def play_with_cats
    self.pets[:cats].each { |e| e.mood = "happy" }
  end
  
  def feed_fish
    self.pets[:fish].each { |e| e.mood = "happy" }
  end
  
  
  private 
  
  
end