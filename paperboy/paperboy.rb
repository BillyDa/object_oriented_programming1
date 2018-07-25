require 'pry'

class Paperboy
  attr_reader = :name, :experience, :earnings
  attr_writer = :name, :experience, :quota
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def quota
    return 50 + @experience / 2
  end

  def deliver(start_address, end_address)
    number_of_houses = end_address - start_address + 1
    over_quota = number_of_houses - @quota
    @experience += number_of_houses
    if number_of_houses >= @quota
      @earnings += (over_quota*0.5) + (@quota*0.25)
      @quota += (0.5*number_of_houses.to_f)
    elsif number_of_houses < @quota
    @earnings += ((number_of_houses*0.25)-2)
    @quota += (0.5*number_of_houses.to_f)
  end
  end

  # def calculate_pay
  #   pay = houses * 0.25
  #   if number_of_houses < 50
  #     return pay - 2
  #   elsif number_of_houses > 50
  #     return pay += 0.50 * (number_of_houses - quota)
  #   end
  # end

  def report
    p "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
  end
end

billy = Paperboy.new("Billy")
billy.deliver(101, 160)
billy.report
billy.deliver(1, 75)
billy.report
