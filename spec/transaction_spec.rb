describe Transaction do

  it 'can hold deposit information' do
    transaction = Transaction.new(100, nil, 100)
    expect(transaction.date).to eq(Date.today)
    expect(transaction.credit).to eq(100)
    expect(transaction.debit).to eq(nil)
    expect(transaction.balance).to eq(100)
  end

  it 'can hold withdrawal information' do
    transaction = Transaction.new(nil, 100, 0)
    expect(transaction.date).to eq(Date.today)
    expect(transaction.credit).to eq(nil)
    expect(transaction.debit).to eq(100)
    expect(transaction.balance).to eq(0)
  end

end
