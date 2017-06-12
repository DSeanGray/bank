describe BankAccount do

  DEFAULT_BALANCE = BankAccount::DEFAULT_BALANCE
  subject(:account) { described_class.new }


  it 'is initialized with a default balance of 0' do
    expect(account.balance).to eq(DEFAULT_BALANCE)
  end

  it 'can accept a deposit' do
    account.deposit(1000)
    expect(account.balance).to eq(1000)
  end

  it 'can accept a withdrawal' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.balance).to eq(500)
  end

end
