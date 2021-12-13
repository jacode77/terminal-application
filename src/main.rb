require "colorize"
require "tty-prompt"

prompt = TTY::Prompt.new

#BASIC MENU SYSTEM
puts "Welcome to the virtual Chatterbox"
puts "You have already chosen wisely by opening this app."
    
    # puts "Pick 1) to start game, Pick 2) for the Christmas Edition, Pick 3) to find out what is Chatterbox, Pick 4) to exit"
    choices = { "Start game": 1, 
                "Christmas Edition": 2, 
                "What is Chatterbox/?": 3, 
                "Quit": 4}
    input = prompt.select("Select an option to start", choices)
    puts input

    
    case input
    when 1
        puts "You have selected to Play".colorize(:blue)
        colours = {"Aqua": 1, "Magenta":2, "Yellow": 3, "Emerald": 4}
        colour_choice = prompt.select("Pick a colour:", colours)
        puts "You have selected #{colours.key(colour_choice)}"

        letters = colours.key(colour_choice).to_s.upcase.split('')
        letters.each { |l| puts l}

        numbers = { "1": 1, 
                    "3": 2, 
                    "5": 3, 
                    "7": 4}
        number_choice = prompt.select("Pick a number:", numbers)
        puts "You have selected #{numbers.key(number_choice)}"

    when 2
        puts "You have opted for the Christmas Edition".colorize(:green)

    when 3
        puts "You seek further understanding of what is Chatterbox".colorize(:orange)

    when 4
        puts "Goodbye".colorize(:pink)
        exit

    else
        puts "Please pick 1, 2, 3 or 4".colorize(:red)
    end
