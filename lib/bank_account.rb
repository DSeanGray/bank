class BankAccount

  attr_reader :balance

  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = 0
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(amount)
    @balance - amount < DEFAULT_BALANCE ? raise("Insufficient funds. Unable to process transaction.") : @balance = @balance - amount
  end

end
