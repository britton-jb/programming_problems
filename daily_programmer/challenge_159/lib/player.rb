class Player
  attr_accessor :stack
  def initialize(args)
    @stack = args[:stack] || {rock: 0, paper: 0, scissors: 0, lizard: 0, spock: 0}
  end
  Player_choices = ['rock', 'paper', 'scissors', 'lizard', 'spock']
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
    if @stack #hmm....
      #setup AI choices
      
    else
      return Player_choices[rand(5)]
    end
  end
  
  def friday
    # if stack is empty, random, else strat
  end
end