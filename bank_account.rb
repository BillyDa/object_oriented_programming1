# class Person
#   def name
#     @name
#   end
#
#   def name=(str)
#     @name = str
#   end
# end
#
# person = Person.new
# person.name # nil
# person.name = "Dennis"

class BankAccount
  def balance
    @balance
  end

  def balance=(num)
    @balance = num
  end

  def interest_rate
    @interest_rate
  end

  def interest_rate(quan)
    @interest_rate = quan
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest(amount)
    @balance * amount
  end

uxdesigner = BankAccount.new
# Create a instance

uxdesigner.balance = 10
puts uxdesigner.balance

uxdesigner.deposit(69)
puts uxdesigner.balance

uxdesigner.withdraw(5)
puts uxdesigner.balance

uxdesigner.gain_interest(0.05)
puts uxdesigner.balance


end
