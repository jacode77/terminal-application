# require_relative 'methods.rb'
require_relative 'menu.rb'

describe 'main_menu' do
    
    it "should be defined" do
        expect(defined? main_menu).to eq("method")
    end

    it 'should return user input to initialise case statement' do
        print input
        print choices
        # input = choices.main_menu("Start Game")
        # expect(main_menu.input).to eq("Start Game")
        expect(input).to be("#{choices}")
    end

    # it "should have a hash of menu choices" do
    #     expect

end