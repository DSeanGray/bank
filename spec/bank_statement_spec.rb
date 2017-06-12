describe BankStatement do

  subject(:statement) { described_class.new }

  it 'has no transactions on new accounts' do
    expect(statement.transactions).to eq []
  end
end
