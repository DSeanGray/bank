describe Transaction do

  subject(:transaction) { described_class.new }


  it 'is initialized with todays date' do
    expect(transaction.date).to eq(Date.today)
  end


end
