require "spec_helper"
require "game"

describe Game do
  after(:each) do
    @game = nil
    @series = nil
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
    context 'when paper, scissors' do
      before(:each) do
        @game = Game.new(p1_choice: 'paper', p2_choice: 'scissors')
        @game.winner
      end
      it 'p2 wins' do
        expect(@game.result).to eq(:p2_wins)
      end
    end
    context 'when paper, lizard' do
      before(:each) do
        @game = Game.new(p1_choice: 'paper', p2_choice: 'lizard')
        @game.winner
      end
      it 'p2 wins' do
        expect(@game.result).to eq(:p2_wins)
      end
    end
    context 'when paper, spock' do
      before(:each) do
        @game = Game.new(p1_choice: 'paper', p2_choice: 'spock')
        @game.winner
      end
      it 'p1 wins' do
        expect(@game.result).to eq(:p1_wins)
      end
    end
    context 'when scissors, lizard' do
      before(:each) do
        @game = Game.new(p1_choice: 'scissors', p2_choice: 'lizard')
        @game.winner
      end
      it 'p1 wins' do
        expect(@game.result).to eq(:p1_wins)
      end
    end
    context 'when scissors, spock' do
      before(:each) do
        @game = Game.new(p1_choice: 'scissors', p2_choice: 'spock')
        @game.winner
      end
      it 'p2 wins' do
        expect(@game.result).to eq(:p2_wins)
      end
    end
    context 'when lizard, spock' do
      before(:each) do
        @game = Game.new(p1_choice: 'lizard', p2_choice: 'spock')
        @game.winner
      end
      it 'p1 wins' do
        expect(@game.result).to eq(:p1_wins)
      end
    end
  end
  describe "#update_series" do
    before(:each) do
      @series = Series.new(p1_type: 'human', p2_type: 'monday')
    end
    context 'when p1 wins' do
      before(:each) do
        @game = Game.new(p1_choice: 'lizard', p2_choice: 'spock')
        @game.winner
        @game.update_series(@series)
      end
      it 'should increase p1 win count by 1' do
        expect{@series.p1_wins}.to eq(1)
      end
      it 'should increase total play count by 1' do
        expect{@game.update_series(@series)}.to change(@series.total).from(0).to(1)
      end
    end
    context 'when p2 wins' do
      before(:each) do
        @game = Game.new(p1_choice: 'paper', p2_choice: 'scissors')
        @game.winner
        @game.update_series
      end
      it 'should increase p2 win count by 1' do
        expect{@game.update_series(@series)}.to change(@series.p2_wins).from(0).to(1)
      end
      it 'should increase total play count by 1' do
        expect{@game.update_series(@series)}.to change(@series.total).from(0).to(1)
      end
    end
    context 'when a tie occurs' do
      before(:each) do
        @game = Game.new(p1_choice: 'lizard', p2_choice: 'lizard')
        @game.winner
        @game.update_series
      end
      it 'should increase tie count by 1' do
        expect{@game.update_series(@series)}.to change(@series.ties).from(0).to(1)
      end
      it 'should increase total play count by 1' do
        expect{@game.update_series(@series)}.to change(@series.total).from(0).to(1)
      end
    end
  end
end