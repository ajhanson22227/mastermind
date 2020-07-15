require 'colorize'

#Game engine class
class Game
    attr_accessor :code
    def initialize
        @secret_code = Code.new
        @player = Player.new
    end

    def play
        @secret_code.generate_code
        @secret_code.display_code
        get_player_input
        @secret_code.compare_code(@player.player_guess)
    end

    def get_player_input
        until @player.player_guess.length == @secret_code.code_length
            @player.player_input
        end
    end

end

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
        puts @code.join('')
    end

    def compare_code(guess)
        p @code
        p guess
    end

    def code_length
        @code.length
    end
end

class Player
    attr_accessor :player_guess
    def initialize
        @name = 'You'
        @player_guess = ''
    end

    def player_input
        valid = false
        until valid
            puts 'What is your Guess? (Ex: 12345)'
            @player_guess = gets.chomp
            valid = check_valid_guess
        end 
    end

    def check_valid_guess
        @player_guess !~ /\D/
    end
end