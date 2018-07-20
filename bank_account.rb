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

  def interest_rate=(rate)
    @interest_rate = rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
     @balance * interest_rate + balance
  end

uxdesigner = BankAccount.new
# Create a instance
uxdesigner.balance = 10
puts uxdesigner.balance

uxdesigner.interest_rate = 0.015

uxdesigner.deposit(69)
puts uxdesigner.balance

uxdesigner.withdraw(5)
puts uxdesigner.balance

#
# uxdesigner.interest_rate(0.05)
# puts uxdesigner.balance

# uxdesigner.interest_rate = 0.20

uxdesigner.gain_interest
puts uxdesigner.gain_interest



end
