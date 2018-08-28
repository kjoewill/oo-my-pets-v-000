class Cat
   
  attr_accessor :mood, :owner
  attr_reader :name
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
  
  def be_happy
    self.mood = "happy"
  end
  
  def be_nervous
    self.mood = "nervous"
  end
  
end