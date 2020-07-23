class Code
    attr_reader :code
    def initialize
        @code = []
    end

    def generate_code
        a = (0..9).to_a.shuffle
        5.times do |i|
            @code[i] = a.pop
        end
    end

    def get_code
        loop do
            puts 'What is your Guess? (Ex: 12345)'
            @code = gets.chomp
            break if check_valid_guess
            puts "Invalid Guess. Try Again"
        end
        @code = @code.split('').map(&:to_i)
    end

    def check_valid_guess
        @code !~ /\D/
    end

    def display_code
        puts @code.join('')
    end

    def code_length
        @code.length
    end

    def reset_code
        @code.clear
    end

    def compare(player_code)
        exact = 0
        similar = 0
        self.code.each_with_index do |val, ind|
            if val == player_code.code[ind]
                exact += 1
                player_code.code[ind] = 'e'
            elsif player_code.code.include?(val)
                similar += 1
                player_code.code[player_code.code.index(val)] = 's'
            end
        end
        puts "There are #{exact} exact characters and #{similar} similar characters"
    end
end