require_relative '../classes/game.rb'

describe 'random_numbers' do
    it "should return four random numbers from the array" do
        result = random_numbers
        expect(result.length).to eq(4)
    end

    it "should not return ordered numbers" do
        result = random_numbers
        expect(result).not_to match([1, 2, 3, 4])
    end
end

