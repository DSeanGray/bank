describe Transaction do

  it 'can hold deposit information' do
    transaction = Transaction.new(100, nil, 100)
    expect(transaction.credit).to eq(100)
    expect(transaction.debit).to eq(nil)
    expect(transaction.balance).to eq(100)
  end

end
