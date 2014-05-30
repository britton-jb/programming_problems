require "spec_helper"

Player_choices = ['rock', 'paper', 'scissors', 'lizard', 'spock']
Player_types = ['human', 'monday', 'wednesday', 'friday']

describe Game do
  @game = Game.new(p1_choice: 'rock', p2_choice: 'scissors')
  before(:each) do
    @game.winner
  end
  describe '#winner' do
    context 'when rock, scissors' do
      it 'results in rock winning' do
        expect(@game.result).to eql(:p1_wins)
      end
    end
  end
end