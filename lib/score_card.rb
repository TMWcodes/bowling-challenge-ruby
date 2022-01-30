class Scorecard
    attr_accessor :score
    def initialize
        @score = []
        @frame_array = []
    end
  
    def add_score(a,b)
      t = [a,b]
      @score<<t
    end

    def check_pin_score
        @score
    end

    def check_frame_score
        # @score.each { |sub_array| sub_array.reduce(0, :+)}
        x = @score.map{ |frame| frame.sum}
    end

    def check_total_score
        x = @score.map{ |frame| frame.sum}.sum
    end
end

# puts "Hello please enter score: "
# var = gets.chomp.to_i


# output tests ----
# p score_card = Scorecard.new

# score_card.add_score(0,0)

# score_card.check_pin_score

# score_card.add_score(1,2)

# score_card.check_pin_score
# score_card.add_score(2,2)
# score_card.add_score(3,4)
# @score
# p "cps #{score_card.check_pin_score}"
# p "cfs #{score_card.check_frame_score}"
# p "cts #{score_card.check_total_score}"