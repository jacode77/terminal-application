require_relative '../helpers.rb'


describe 'random_numbers' do
    
    it 'should return four random numbers from the array' do
        result = random_numbers
        expect(result.length).to eq(4)
    end
end

# describe 'fortune' do
#     it 'should provide a fortune based on number user has selected' do
#     random_number = 5
#     expect(fortune).to eq(5)
#     end
# end