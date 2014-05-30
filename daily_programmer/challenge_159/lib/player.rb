class Player
  attr_accessor :stack
  def initialize(args)
    @stack = args[:stack] || {}
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
    choice = Player_choices[rand(5)]
    return choice
  end
  
  def wednesday
    # if stack is empty, random, else strat
  end
  
  def friday
    # if stack is empty, random, else strat
  end
end