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
  
  def buy_fish(name)
    buy_pet(name, Fish, :fishes)
  end
  
  def buy_cat(name)
    buy_pet(name, Cat, :cats)
  end
  
  def buy_dog(name)
    buy_pet(name, Dog, :dogs)
  end
  
  def walk_dogs
    make_happy(:dogs)
  end
  
  def play_with_cats
    make_happy(:cats)
  end
  
  def feed_fish
    make_happy(:fishes)
  end
  
  def sell_pets
    self.pets.each do |type, pets| 
      pets.each { |e| e.be_nervous }
      pets.clear
    end
  end
  
  def list_pets
    "I have #{num(:fishes)} fish, #{num(:dogs)} dog(s), and #{num(:cats)} cat(s)."
  end
  
  private 
  
  def buy_pet(name, species, key)
    pet = species.new(name)
    pet.owner = self
    self.pets[key] << pet
  end
  
  def num(type)
    self.pets[type].size
  end
  
  def make_happy(type)
    self.pets[type].each { |e| e.be_happy }
  end
  
end