describe BankStatement do

  subject(:statement) { described_class.new }
  let(:deposit_transaction) { Transaction.new(100, nil, 100) }

  it 'has no transactions on new accounts' do
    expect(statement.transactions).to eq []
  end

  it 'holds transaction information in an array of transactions' do
    statement.transactions << deposit_transaction
    expect(statement.transactions).to eq [deposit_transaction]
  end
end
