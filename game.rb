require 'colorize'
require 'pry'

#Game engine class
class Game
    def initialize
        @turn = 1
        @secret_code = Code.new
        @player_code = Code.new
        @player = Player.new
    end

    def play
        @secret_code.generate_code
        @secret_code.display_code
        loop do
            puts "Turn:\t#{@turn}"
            get_player_input
            @turn += 1
            break if game_over?
            compare_code
            gets
            clear_screen
        end
    end

    def game_over?
        #binding.pry
        if @player_code.code.join('') == @secret_code.code.join('')
            puts "Congrats! You got the code! It was #{@secret_code.code}"
            true
        elsif @turn > 12
            puts "You didn't solve it in the 12 turns"
            true
        end
    end

    def get_player_input
        @player_code.reset_code
        loop do
            @player_code.get_code
            break if @player_code.code_length == @secret_code.code_length
            puts "Needs to be #{@secret_code.code_length} characters"
        end
    end

    def compare_code
        @secret_code.compare(@player_code)
    end

    def clear_screen
        system("clear") || system("cls")
    end

end
