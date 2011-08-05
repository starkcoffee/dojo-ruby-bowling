

module Parse

    def parse(score_line)
      frames = []
      score_line.chars.each_slice(2) {|a, b| frames << Frame.new(a, b)}
      frames
    end

end

class Frame
  def initialize(roll1, roll2)
    
  end
end

class Game
  
  def score(score_line)
    
    frames = parse(score_line)
    frames.inject(0) do |total_score, frame|
      total_score + frame.score
    end
    
    # score_line.chars.inject(0) do |sum, roll_char|
    #   sum + Roll.new(roll_char).score
    # end
  end
  
  private
  include Parse
  
  
end



class Roll
  attr_reader :score
  
  def initialize roll_char
    @score = score_of(roll_char)
  end
  
  private
  
  def score_of(roll_char)
    roll_char == "-" ? 0 : roll_char.to_i
  end
end
