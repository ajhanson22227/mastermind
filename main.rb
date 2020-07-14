# frozen_string_literal: true

#       Phase 1 - Method & Loops
#       [X] Generate a random Code for the computer (Integers 0-9 for now)
#       [X] Get a guess frome the player
#       [X] Compare the guess with the computer code (C will be correct E will be exists)
#       [X] Return the guess with the results below characters
#       [X] Get the next guess
#       [X] Loop this 12 times. Game ends after 12 or correct guess
#       [X] Move code to methods


require './game.rb'

game = Game.new
game.play

# def new_code
#   a = (0..9).to_a.shuffle
#   new_code = []
#   5.times do |i|
#     new_code[i] = a.pop
#   end
#   new_code
# end

# def guess
#   gets.chomp.split(' ').map(&:to_i)
#   # new_guess = new_guess.split(' ').map(&:to_i)
# end

# def compare_result(computer_code, player_guess)
#   a = []
#   computer_code.each_with_index do |value, index|
#     a[index] =  if value == player_guess[index]
#                  'C'
#                 elsif computer_code.include?(player_guess[index])
#                  'E'
#                 else
#                  'N'
#                 end
#   end
#   a
# end

# def print_results(player_guess, guess_results)
#   player_guess.each do |val|
#     print "#{val}\t"
#   end
#   puts ''
#   guess_results.each do |res|
#     print "#{res}\t"
#   end
#   puts

#   if guess_results.all? { |val| val == 'C' }

#     puts 'winner'
#     puts 'winner'
#     puts 'winner'
#     puts 'winner'
#     true
#   end
# end

# # this will fill the computer code variable with random integers
# computer_code = new_code

# 1.upto(12) do |count|
#   # Get's the player's guess
#   puts "Turn:\t#{count}"
#   puts 'Enter Guess'
#   player_guess = guess

#   # Compares the code
#   guess_results = compare_result(computer_code, player_guess)
#   if print_results(player_guess, guess_results) then break end
# end
