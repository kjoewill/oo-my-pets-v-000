class Dog
  
  attr_reader :name
  attr_accessor :mood
  
  def initialize(name, mood = "nervous")
    @name = name
  end
  
end