class BankAccount
  attr_accessor :balance, :status
  attr_accessor :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def balance
    @balance
  end

  def deposit(amount)
    self.balance += amount
  end

  def display_balance
    self.balance
  end
end
