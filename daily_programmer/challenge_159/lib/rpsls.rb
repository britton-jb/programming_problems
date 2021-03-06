class Series
  attr_accessor :total, :p1_wins, :p2_wins, :ties, :p1_type, :p2_type, :play_again
  def initialize(args)
    @total = args[:total] || 0
    @p1_wins = args[:p1_wins] || 0
    @p2_wins = args[:p2_wins] || 0
    @ties = args[:ties] || 0
    @p1_type = args[:p1_type] || 'human'
    @p2_type = args[:p2_type] || 'monday'
    @play_again = args[:play_again] || true
  end
  
  def play_again?
    puts "Would you like to play again? y/n"
    begin
      case gets.chomp.downcase
      when 'yes', 'y'
      when 'no', 'n'
        @play_again = false
      else
        raise StandardError
      end
      rescue StandardError
        puts "Error: please enter a valid response. y/n"
        retry
    end
  end
  
  def stats
    puts "Total games:   #{@total}"
    puts "Player 1 Type: #{@p1_type}, Player 2 Type: #{@p2_type}"
    puts "Player 1 Wins: #{@p1_wins}, #{(@p1_wins.to_f / @total.to_f) * 100}%"
    puts "Player 2 Wins: #{@p2_wins}, #{(@p2_wins.to_f / @total.to_f) * 100}%"
    puts "Ties:          #{@ties}, #{(@ties.to_f / @total.to_f) * 100}%"
  end
end