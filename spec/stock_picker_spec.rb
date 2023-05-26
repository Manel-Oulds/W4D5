require 'stock_picker'

describe '#stock_picker' do
    it 'return the pair of days where you buy and sell' do
        expect(stock_picker([184,186,182,180,186,177,174,172,180])).to eq([7,8])
    end

end