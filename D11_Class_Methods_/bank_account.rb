class BankAccount
  @@interest_rate = 0.05
  @@accounts = []

  def balance   # READER
    @balance
  end

  def balance=(amount)
    @balance = amount
  end

  def initialize
    @balance = 0
  end

  def deposit(number)
    @balance += number
  end

  def withdraw(number)
    @balance -= number
  end

  def self.create
    billy = BankAccount.new
    @@accounts << billy
    return billy
  end

  def self.total_funds
    sum = 0
    @@accounts.each do |account|
      sum += account.balance
    end
    return sum
  end

  def self.interest_time
    @@accounts.each do |account|
      interest = account.balance * @@interest_rate
      account.balance += interest
    end
  end
end

billy = BankAccount.create
peat = BankAccount.create
p billy.balance
p BankAccount.total_funds
billy.deposit(100)
peat.deposit(300)
p billy.balance
p peat.balance
p BankAccount.total_funds
BankAccount.interest_time
p billy.balance
p peat.balance
p BankAccount.total_funds
billy.withdraw(60)
peat.withdraw(40)
p billy.balance
p peat.balance
p BankAccount.total_funds
