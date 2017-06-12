require_relative "./bank_statement.rb"
require_relative "./transaction.rb"

class BankAccount

  attr_reader :balance, :statement

  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE, statement = BankStatement.new)
    @balance = DEFAULT_BALANCE
    @statement = statement
  end

  def deposit(amount)
    @balance = @balance + amount
    add_deposit(amount)
  end

  def withdraw(amount)
    @balance - amount < DEFAULT_BALANCE ? raise("Insufficient funds. Unable to process transaction.") : @balance = @balance - amount
    add_withdrawal(amount)
  end

  private

  def add_deposit(credit)
    transaction = Transaction.new(credit, nil, @balance)
    @statement.transactions << transaction

  end

  def add_withdrawal(debit)
    transaction = Transaction.new(nil, debit, @balance)
    @statement.transactions << transaction
  end

end
