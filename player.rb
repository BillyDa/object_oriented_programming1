

class Player
attr_reader :lives, :gold, :health_points #I want you to write 3 getter(reader) methods for lives gold and health points

  def initialize
    @lives = 5
    @gold = 0
    @health_points = 10
  end

  def level_up        #instance method
    @lives += 1
  end

  def collect_treasure      #instance method
     @gold += 1
     if @gold % 10 == 0
    level_up          #if we want to do self.  then we
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
    end
    if @lives == 0
      restart
  end
end

  def restart
    @lives = 5
    @gold = 0
    @health_points = 10

  end

  end



fabio = Player.new
puts "Gold: #{fabio.gold}"
puts "Lives: #{fabio.lives}"
puts "Health: #{fabio.health_points}"
puts "COLLECTING TREASURE"

# puts fabio.lives    #cannot access from outside without getters!
rand(10).times do      #rand is the max of the range
  fabio.collect_treasure
end
puts "Gold: #{fabio.gold}"
puts "Lives: #{fabio.lives}"
puts "Health: #{fabio.health_points}"
puts "DOING BATTLE"
fabio.do_battle(rand(10))
puts "Gold: #{fabio.gold}"
puts "Lives: #{fabio.lives}"
