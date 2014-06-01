class Game
  attr_accessor :series, :p1_choice, :p2_choice, :result
  def initialize(args)
    @series = args[:series]
    @p1_choice = args[:p1_choice].downcase.to_sym
    @p2_choice = args[:p2_choice].downcase.to_sym
    @result = args[:result]
  end
  
  def end_game
    #call winner, update_series, and update_ai_stack
  end
  
  Combinations = {rock: { scissors: 'crushes', lizard: 'crushes'},
                  paper: { rock: 'covers', spock: 'disproves'},
                  scissors: { paper: 'cuts', lizard: 'decapitates'},
                  spock: { scissors: 'smashes', rock: 'vaporizes'},
                  lizard: { spock: 'poizons', paper: 'eats'} }
  def winner
    p1_cap = @p1_choice.to_s.capitalize
    p2_cap = @p2_choice.to_s.capitalize
    puts "Player 1 Picks: #{p1_cap}."
    puts "Player 2 Picks: #{p2_cap}."
    if Combinations[@p1_choice][@p2_choice]
      puts "#{p1_cap} #{Combinations[@p1_choice][@p2_choice]} #{p2_cap}. Player 1 wins!"
      @result = :p1_wins
    elsif Combinations[@p2_choice][@p1_choice]
      puts "#{p2_cap} #{Combinations[@p2_choice][@p1_choice]} #{p1_cap}. Player 2 wins!"
      @result = :p2_wins
    else
      puts "It's a tie!"
      @result = :tie
    end
  end
  
  def update_series(series)
    if @result == :p1_wins
      series.total += 1
      series.p1_wins += 1
    elsif @result == :p2_wins
      series.total += 1
      series.p2_wins += 1
    else
      series.total += 1
      series.ties += 1
    end
  end
  
  def update_ai_stack
    #send message updating AI
    #best way to do updating messaging?
  end
end