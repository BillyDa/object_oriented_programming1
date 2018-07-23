#Deciding on initializer: Something we don't need to change

class Cat

# attr_writer/attr_reader/attr_accessor :name, :preferred_food, :meal_time
# THIS WRITES OUT GETTERS AND SETTERS!

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

def name
  return @name        #instance variable
end

def eats_at         #instance method
  if @meal_time < 12
    return "#{@meal_time} AM"
  else
    return "#{@meal_time - 12} PM"
  end
end

def meow
    return "My name is #{@name}. I eat #{@preferred_food} everyday at #{eats_at}"
end
end

cat = Cat.new("Missy", "Tuna", 18)
cat2 = Cat.new("Amber", "Salmon", 16)

puts cat.name
puts cat.eats_at
puts cat.meow



# class Cat
#   def name
#     @name
#   end
#
#   def preferred_food          #these are states
#     @preferred_food
#   end
#
#   def preferred_food=(meowmix)    #these are states
#     @preferred_food = meowmix
#
#   def meal_time             #these are states
#     @meal_time
#   end
#
#   def meal_time=(time)
#     @meal_time = time
#
#   def initialize
#
#
#
# end
