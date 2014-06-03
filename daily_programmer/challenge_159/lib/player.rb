class Player
  attr_accessor :stack
  def initialize(args)
    @stack = args[:stack] || {rock: 0, paper: 0, scissors: 0, lizard: 0, spock: 0}
  end
  Player_choices = ['rock', 'paper', 'scissors', 'lizard', 'spock']
  Combinations = {rock: { scissors: 'crushes', lizard: 'crushes'},
                  paper: { rock: 'covers', spock: 'disproves'},
                  scissors: { paper: 'cuts', lizard: 'decapitates'},
                  spock: { scissors: 'smashes', rock: 'vaporizes'},
                  lizard: { spock: 'poizons', paper: 'eats'} }
  def human
    puts "Rock, Paper, Scissors, Lizard, or Spock?"
    while true
      input = gets.chomp.downcase
      case input
      when 'rock', 'paper', 'scissors', 'lizard', 'spock' #more elegant way?
        return input
        break
      else
        puts "Error: please enter a valid response."
      end
    end
  end
  
  def monday
    return Player_choices[rand(5)]
  end
  
  def wednesday
    greatest = 0
    @results = []
    @stack.each do |key, value| 
      if @results == []
        @results.push(key.to_s)
        greatest = value
      else
        if greatest < value
          @results = [key.to_s]
          greatest = value
        elsif greatest == value
          @results += [key.to_s]
        end
        @results.uniq!
      end
    end
    #results are the most picked things by the other player
    poss = @results.length
    #@counters = []
    #if poss == 1
    #  Combinations.each { |key, value| 
    #    if @results == value
    #      puts "derp"
    #      #@counters += [key.to_s]
    #    end
    #  }
    #  puts @counters
    #  return @counters
    #elsif poss > 1 && poss < 5
      # more than 1 result
      # counter should eliminate matches
    #  puts Combinations[Player_choices[rand(poss)].to_sym]
    #else
    #  return Player_choices[rand(5)]
    #end
  end
  
  def friday
    # if stack is empty, random, else strat
  end
end

@derp = Player.new(stack: {rock: 1, paper: 9, scissors: 1, lizard: 0, spock: 2})
@derp.wednesday