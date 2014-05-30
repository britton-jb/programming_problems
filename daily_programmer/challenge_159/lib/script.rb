## Actual run the game total script code.
@series = Series.new(p1_type: 'human', p2_type: 'monday')
@p1 = Player.new(stack: nil)
@p2 = Player.new(stack: nil)
until @series.play_again == false
  p1_choice = @p1.send(@series.p1_type)
  p2_choice = @p2.send(@series.p2_type)
  game = Game.new(p1_choice: p1_choice, 
                   p2_choice: p2_choice)
  game.winner
  @series.play_again?
end
puts @series.stats