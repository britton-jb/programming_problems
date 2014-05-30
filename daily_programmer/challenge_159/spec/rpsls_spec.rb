require "spec_helper"

Player_choices = ['rock', 'paper', 'scissors', 'lizard', 'spock']
Player_types = ['human', 'monday', 'wednesday', 'friday']

describe Series do
  @series = Series.new(p1_type: 'human', p2_type: 'monday')
  @invalid = Series.new(p1_type: 'derp')
  
  describe '#new' do
    context 'with valid inputs' do
      it 'passes' do
        #note. I don't think this actually tests anything of value.
        expect(Player_types).to include(@series.p1_type)
      end
    end
    context 'with invalid inputs' do
      it 'is pending, is this the right place for this test?'
    end
  end
  describe '#play_again' do
    
    it 'is pending, do i need to test this?'
  end
end