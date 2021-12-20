# require_relative '../helpers.rb'
require_relative '../classes/game.rb'

describe 'Game' do
    before(:each) do
        @test_game = Game.new
    end

    # describe 'welcome' do
    #     it 'should return the user name in the welcome message' do
    #         name = "Hugo"
    #         expect(welcome).to eq("Hugo")
    #     end
    # end

    describe 'menu' do
        it "should be defined" do
            expect(defined? @test_game.menu()).to eq("method")
        end
    end
        #  it 'should return user input' do
        #      choices = {
        #          'Start Game': 1,
        #          'Christmas Edition': 2,
        #          'What is Chatterbox?': 3,
        #          'Quit': 4
        #          }
        #         user_choice = 4
        #      expect(@test_game.menu()).to eq(4)
        #  end
    # end

end