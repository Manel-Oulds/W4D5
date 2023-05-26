require 'game'

describe TOH do 
    subject(:game) {TOH.new }
    describe '#move' do
        it 'raise an error when provided wrong arguments' do
            expect{game.move(1,4)}.to raise_error("Invalid arguments") 
        end
    end
end