require_relative './methods.rb'
# require_relative './what-is.rb'
# require 'colorized_string'
require 'tty-prompt'
require 'lolize'
require 'colorize'
rainbow = Lolize::Colorizer.new
prompt = TTY::Prompt.new(interrupt: :exit)


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
  puts 'You have selected to Play'.colorize(:orange)
  system "clear"
  colours = { 'Blue': 1, 'Magenta': 2, 'Yellow': 3, 'Emerald': 4 }
  colour_choice = prompt.select('Pick a colour:', colours)
  puts "You have selected #{colours.key(colour_choice)}"
  # Assigns key names as an uppercase string to the variable letters
  letters = colours.key(colour_choice).to_s.upcase
  system "clear"
  spell_l(letters)
  number_choice1 = prompt.select('Pick a number:', random_numbers)
  system "clear"
  puts "You have selected #{number_choice1}"
  count_nums(number_choice1)
  number_choice2 = prompt.select('Pick another number:', random_numbers)
  system "clear"
  puts fortune_ascii_art
  puts "You have selected #{number_choice2}"
  fortune(number_choice2, rainbow)

when 2
  puts 'You have opted for the Christmas Edition'.colorize(:green)
  system "clear"
  characters = { 'Santa': 1, 'Rudolph': 2, 'Christmas Elf': 3, 'Grinch': 4 }
  character_choice = prompt.select('Pick a character:', characters)
  puts "You have selected #{characters.key(character_choice)}"
  # Assigns key names as an uppercase string to the variable letters
  letters = characters.key(character_choice).to_s.upcase
  system "clear"
  spell_c(letters)
  number_choice1 = prompt.select('Pick a number:', random_numbers)
  system "clear"
  puts "You have selected #{number_choice1}"
  count_nums(number_choice1)
  number_choice2 = prompt.select('Pick another number:', random_numbers)
  system "clear"
  puts "#{santa_ascii}\nHo ho ho"
  jokes(number_choice2, rainbow)

when 3
    system "clear"
    what_is_ascii
    puts 'You seek further understanding of what is Chatterbox...'.colorize(:green)
    how_to
    menu = {
        'Start game': 1,
        'Christmas Edition': 2,
        'Quit': 4
      }
    input = prompt.select('Select an option', menu)
    puts input

when 4
  puts 'Goodbye'.colorize(:pink)
  exit
else
  puts 'Please pick 1, 2, 3 or 4'.colorize(:red)
end
