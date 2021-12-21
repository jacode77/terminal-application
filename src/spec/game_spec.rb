# require_relative '../helpers.rb'
require_relative '../helpers.rb'

describe 'Game' do
    before(:each) do
        @test_game = Game.new
    end

    describe 'menu' do
        it "should be defined" do
            expect(defined? @test_game.menu()).to eq("method")
        end
    end
end