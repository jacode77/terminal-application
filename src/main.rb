require "colorize"
require "tty-prompt"
require 'lolize'

colorizer = Lolize::Colorizer.new

prompt = TTY::Prompt.new

#BASIC MENU SYSTEM
puts "Welcome to the virtual Chatterbox"
puts "You have already chosen wisely by opening this app."
    
    # puts "Pick 1) to start game, Pick 2) for the Christmas Edition, Pick 3) to find out what is Chatterbox, Pick 4) to exit"
    choices = { "Start game": 1, 
                "Christmas Edition": 2, 
                "What is Chatterbox?": 3, 
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
        def letter_colour
            if letters == "Aqua"
                puts letters.each { |l| puts l.colorize(:cyan)}
            elsif letters == "Magenta"
                puts letters.each { |l| puts l}.colorize(:magenta)
            elsif letters == "Yellow"
                puts letters.each { |l| puts l}.colorize(:yellow)
            else
                puts letters.each { |l| puts l}.colorize(:green)
            end
        end

        numbers2 = {1 => 1, 
                    3 => 2, 
                    5 => 3, 
                    7 => 4}
        number_choice2 = prompt.select("Pick a number:", numbers2)
        puts "#{numbers2.key(number_choice2)} bonjours for you!"
        puts "You have selected #{numbers2.key(number_choice2)}"
        
        # Loops through from 1 to number selected. Acts as count in game
        i = 0
        loop do
        i += 1
            puts i
        if i == numbers2.key(number_choice2)
            break       
        end
        end
        
        
        numbers1 = {2 => 2, 
                    4 => 4, 
                    6 => 6, 
                    8 => 8}
        number_choice1 = prompt.select("Pick a number:", numbers1)
        puts number_choice1
        puts "You have selected #{numbers1.key(number_choice1)}"

        case number_choice1

        when 1
            colorizer.write "If you eat something and nobody sees you eat it, it has no calories."
        when 2
            colorizer.write "Shame on you for looking here for answers to life."
        when 3
            colorizer.write "Error 404, fortune not found."
        when 4
            colorizer.write "To truly find yourself you should play hide and seek alone."
        when 5
            colorizer.write "You will overcome difficult times."
        when 6
            colorizer.write "He who never makes mistakes never did anything that’s worthy."
        when 7
            colorizer.write "You will marry a professional athlete - if competitive eating can be considered a sport."
        else
            colorizer.write "Perhaps you’ve been focusing too much on spending."
        end

        
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
