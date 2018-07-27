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
    if outrun_zombie? == true
      p "You escaped unscathed!"
    elsif survive_attack? == true && outrun_zombie? == false
      p "You are now a zombie"
      return @@horde << initialize(rand(@@max_speed), rand(@@max_strength))
    else
      p "You are zombie food"
    end
  end

  def outrun_zombie?
    zombie_meal_speed = rand(@@max_speed)
    if zombie_meal_speed > @speed
      return true
    else
      return false
    end
  end

  def survive_attack?
    zombie_meal_strength = rand(@@max_strength)
    if zombie_meal_strength > @strength
      return true
    else
      return false
    end
  end

  def self.plague_level
    @@plague_level
  end

  def self.plague_level=(integer)
    @@plague_level = integer
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
    # dead = rand(11)
      Random.rand(11).times do       # Each acts on each thing once, times acts a certain number of times.
      @@horde.delete(@@horde.sample)
      #@@horde.each do |die|
      # LOOP
    end
  end

  def self.spawn
    rand(3..@@plague_level).times do
      @@horde << self.new(rand(@@max_speed), rand(@@max_strength))
    end
  end
  #   @@plague_level.rand(11)
  #   @@horde
  #   # @@horde << @@plague_level.rand(11)
  #   @@max_speed.rand(6)
  #   @@max_strength.rand(9)
  # end
  def self.increase_plague_level
    @@plague_level += rand(4)
    # @@plague_level += @@plague_level.rand(3)
    # return @@plague_level
  end

end

p Zombie.all.inspect
Zombie.new_day
p Zombie.all.inspect
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
p zombie1.encounter
p zombie2.encounter
p zombie3.encounter
Zombie.new_day
p Zombie.all.inspect
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
p zombie1.encounter
p zombie2.encounter
p zombie3.encounter
