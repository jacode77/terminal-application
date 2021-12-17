describe 'Menu' do

    it 'should be an instance of Menu' do
        test_group = Group.new("Test Group")
        expect(@test_group).to be_a Group # add instance variable
    end

    # The first and second are more or less the same - repeated.
    it "should have a name proprty" do
        # test_group = Group.new("Test Group")
        expect(@test_group.name).to eq("Test Group") # add instance variable
    end

    it "should have an array of names" do
        expect(@test_group.names_array).to be_an_instance_of(Array)
    end

    describe ".names_name" do
        it "should contain the name Alice" do
            expect(@test_group.names_array).to include("Alice")
        end
    end
end

describe 'exit_option' do

    it "should exit game after menu with 'ctrl c' without error" do
        expect()
end