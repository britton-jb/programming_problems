require "spec_helper"
require "game"

describe Game do
  after(:each) do
    @game = nil
  end
  describe '#winner' do
    context 'when choices are the same' do
      before(:each) do
        @game = Game.new(p1_choice: 'rock', p2_choice: 'rock')
        @game.winner
      end
      it 'results in a tie' do
        expect(@game.result).to eq(:tie)
      end
    end
    context 'when rock, paper' do
      before(:each) do
        @game = Game.new(p1_choice: 'rock', p2_choice: 'paper')
        @game.winner
      end
      it 'p2 wins' do
        expect(@game.result).to eq(:p2_wins)
      end
    end
    context 'when rock, scissors' do
      before(:each) do
        @game = Game.new(p1_choice: 'rock', p2_choice: 'scissors')
        @game.winner
      end
      it 'p1 wins' do
        expect(@game.result).to eq(:p1_wins)
      end
    end
    context 'when rock, lizard' do
      before(:each) do
        @game = Game.new(p1_choice: 'rock', p2_choice: 'lizard')
        @game.winner
      end
      it 'p1 wins' do
        expect(@game.result).to eq(:p1_wins)
      end
    end
    context 'when rock, spock' do
      before(:each) do
        @game = Game.new(p1_choice: 'rock', p2_choice: 'spock')
        @game.winner
      end
      it 'p2 wins' do
        expect(@game.result).to eq(:p2_wins)
      end
    end
  end
end