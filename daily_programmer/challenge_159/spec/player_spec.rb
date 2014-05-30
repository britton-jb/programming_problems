require "spec_helper"

Player_choices = ['rock', 'paper', 'scissors', 'lizard', 'spock']
Player_types = ['human', 'monday', 'wednesday', 'friday']

describe Player do
  @p1 = Player.new(stack: nil)
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