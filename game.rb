#Game engine class
class Game
    attr_accessor :code
    def initialize
        @code = Code.new
    end

    def play
        @code.generate_code
        @code.display_code
    end

    
end

# def new_code
#   a = (0..9).to_a.shuffle
#   new_code = []
#   5.times do |i|
#     new_code[i] = a.pop
#   end
#   new_code
# end


class Code
    def initialize
        @code = []
    end

    def generate_code
        a = (0..9).to_a.shuffle
        5.times do |i|
            @code[i] = a.pop
        end
    end

    def display_code
        p @code
    end
end