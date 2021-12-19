require_relative '../helpers.rb'
require_relative '../classes/game.rb'


describe 'Game' do
    before(:each) do
        @test_game = Game.new
    end
 
    # it 'should return welcome banner and message when first starting game' do
    #     expect(@test_game.welcome()).to eq(welcome())
    # end

    describe '.menu' do
        it "should be defined" do
            expect(defined? @test_game.menu()).to eq("method")
        end

        it 'should return user input' do
            choices = {
                'Start Game': 1,
                'Christmas Edition': 2,
                'What is Chatterbox?': 3,
                'Quit': 4
                }
            expect(@test_game.menu()).to have_key(choices)
        end
    end


end


#     it 'should return user input to initialise case statement' do
#         print input
#         print choices
#         # input = choices.main_menu("Start Game")
#         # expect(main_menu.input).to eq("Start Game")
#         expect(input).to be("#{choices}")
#     end

#     # it "should have a hash of menu choices" do
#     #     expect

# end