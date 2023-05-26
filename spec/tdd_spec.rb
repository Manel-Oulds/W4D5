require 'tdd'

describe "#uniq_array" do 
    it 'return uniq elements' do
        expect(uniq_array([9,2,4,9,3,2])).to eq([9,2,4,3])
    end
end

describe '#two_sum' do
    it 'return the elems that sums to zero' do
        expect(two_sum([2,0,3,-2,-5,1,5])).to eq([[0,3],[4,6]])
    end
end

describe '#my_transpose' do 
    it 'return the transpose of an array' do
        expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
end