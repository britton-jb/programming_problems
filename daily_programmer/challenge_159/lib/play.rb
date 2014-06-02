require_relative "rpsls"
require_relative "player"
require_relative "game"

puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
puts "Please list the player one type: (Human, or Monday)"
p1 = gets.chomp.downcase
puts "Please list the player two type: (Human, or Monday)"
p2 = gets.chomp.downcase
@series = Series.new(p1_type: p1, p2_type: p2)
@p1 = Player.new(stack: nil)
@p2 = Player.new(stack: nil)
until @series.play_again == false
  p1_choice = @p1.send(@series.p1_type)
  p2_choice = @p2.send(@series.p2_type)
  game = Game.new(p1_choice: p1_choice, 
                  p2_choice: p2_choice)
  game.end_game(series: @series, p1: @p1, p2: @p2)
  @series.play_again?
end
puts @series.stats