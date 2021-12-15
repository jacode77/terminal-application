require_relative './methods.rb'
# require 'colorized_string'
require 'tty-prompt'
require 'lolize'
require 'colorize'
rainbow = Lolize::Colorizer.new
prompt = TTY::Prompt.new

puts "#{banner_ascii}\nWelcome to the virtual Chatterbox\nYou have already chosen wisely by opening this app."

#BASIC MENU SYSTEM
choices = {
  'Start game': 1,
  'Christmas Edition': 2,
  'What is Chatterbox?': 3,
  'Quit': 4
}
input = prompt.select('Select an option to start', choices)
puts input

case input
when 1
  puts 'You have selected to Play'.colorize(:magenta)
  colours = { 'Blue': 1, 'Magenta': 2, 'Yellow': 3, 'Emerald': 4 }
  colour_choice = prompt.select('Pick a colour:', colours)
  puts "You have selected #{colours.key(colour_choice)}"

  # Assigns key names as an uppercase string to the variable letters
  letters = colours.key(colour_choice).to_s.upcase
  spell_l(letters)

  number_choice1 = prompt.select('Pick a number:', random_numbers)
  puts "You have selected #{number_choice1}"
  count_nums(number_choice1)

  number_choice2 = prompt.select('Pick a number:', random_numbers)
  puts fortune_ascii_art
  puts "You have selected #{number_choice2}"
  fortune(number_choice2, rainbow)
when 2
  puts 'You have opted for the Christmas Edition'.colorize(:green)
when 3
  puts 'You seek further understanding of what is Chatterbox'.colorize(:orange)
when 4
  puts 'Goodbye'.colorize(:pink)
  exit
else
  puts 'Please pick 1, 2, 3 or 4'.colorize(:red)
end
