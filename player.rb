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
