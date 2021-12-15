require_relative './methods.rb'
require 'colorized_string'
require "tty-prompt"
require 'lolize'
require 'colorize'  
colorizer = Lolize::Colorizer.new 


prompt = TTY::Prompt.new

puts "Welcome to the virtual Chatterbox"
puts "You have already chosen wisely by opening this app."
    
#BASIC MENU SYSTEM
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
        # letters.each { |l| puts l}
        
                # Colorize isn't working - properly
            if letters == "Aqua"
                letters.each { |l| puts l.colorize(:cyan)}
            elsif letters == "Magenta"
                letters.each { |l| puts l.colorize(:magenta)}
            elsif letters == "Yellow"
                letters.each { |l| puts l.colorize(:yellow)}
            else
                letters.each { |l| puts l.colorize(:green)}
            end

        number_choice1 = prompt.select("Pick a number:", random_numbers)
        puts "#{number_choice1} bonjours for you!"
        puts "You have selected #{number_choice1}"
        
        # Loops through from 1 to number selected. Acts as count actions in game

        i = 1
        loop do
            puts i
                i += 1
            
            if i == number_choice1 + 1
                break       
            end
        end

        number_choice2 = prompt.select("Pick a number:", random_numbers)
        puts number_choice2
        puts "You have selected #{number_choice2}"

        case number_choice2

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


    
