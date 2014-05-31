require "spec_helper"
require "rpsls"

describe Series do
  before(:each)
  @series = Series.new(p1_type: 'human', p2_type: 'monday')
  @invalid = Series.new(p1_type: 'derp')
  
  describe '#play_again' do  
    it 'is pending, do i need to test this?'
  end
end