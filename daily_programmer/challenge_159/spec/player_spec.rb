require "spec_helper"
require "player"

describe Player do
  before(:each) do
    @p1 = Player.new(stack: nil)
  end
  #move player type validations to here?
  describe '#human' do
    it 'is pending, i need to figure out how to test this'
  end
  
  describe '#monday' do
    it 'responds with a valid choice' do
      #possibly the only currently worthwhile test in the suite
      expect(Player_choices).to include(@p1.monday)
    end
  end
end