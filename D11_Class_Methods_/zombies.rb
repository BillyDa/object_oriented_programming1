require 'pry'

class Zombie

  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

  def initialize(speed, strength)
    @speed = speed
    @strength = strength
    if @speed > @@max_speed
       @speed = @@default_speed
    end
    if @strength > @@max_strength
       @strength = @@default_strength
    end
  end

  def encounter
          #if I outrun, return "im alive"
          #else i dont outrun && survive_attack == false
  end

  def outrun_zombie?
    zombie_meal_speed = Random.rand(6)
    if zombie_meal_speed > speed
      return true
    else
      return false
    end
  end

  def survive_attack?
    zombie_meal_strength = Random.rand(9)
    if zombie_meal_strength > strength
      return true
    else
      return false
    end
  end

  def self.all
    return @@horde
  end

  def self.new_day
    self.some_die_off
    self.spawn
    self.increase_plague_level
  end

  def self.some_die_off
    dead = rand(11)
    @@horde.each do |die| # LOOP
      @@horde

  end

  def self.spawn
    @@horde << @@plague_level.rand(11)
    @@max_speed.rand(6)
    @@max_strength.rand(9)
  end

  def self.increase_plague_level
    @@plague_level += @@plague_level.rand(3)
    return @@plague_level
  end

end

p Zombie.all.inspect
Zombie.new_day
p Zombie.all.inspect
