def standard_edition
    puts 'You have selected to Play'.colorize(:purple), system "clear"

    colours = { 'Blue': 1, 'Magenta': 2, 'Yellow': 3, 'Emerald': 4 }
    colour_choice = prompt.select('Pick a colour:', colours)
    puts "You have selected #{colours.key(colour_choice)}"
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
end