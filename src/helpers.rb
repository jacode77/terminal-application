require 'colorize'

# def name_input
#   puts "Please enter your name:"
#   name = gets.chomp
#   begin
   
#   rescue puts "No input. Please tell us your first name." if name.empty? || name.nil?
#   retry
#   end
# end
# end



# prints banner in welcome page
def banner_ascii
  begin
    File.foreach('./data/banner.txt') {|line| puts line}
  rescue SystemCallError => e
    puts "Something unexpected happened to the image that should be here. You can look into it here: #{e.inspect}".colorize(:red)
  end
end

# returns an array of 4 random numbers from 1-8
def random_numbers
  numbers = [1, 2, 3, 4, 5, 6, 7, 8]
  random_nums = numbers.shuffle[0, 4]
  return random_nums
end

# loops through the colour selected, printing each letter on a separate line in its colour
def spell_l(letters)
  if letters == 'BLUE'
    letters.split('').each { |l| puts l.colorize(:cyan) }
  elsif letters == 'MAGENTA'
    letters.split('').each { |l| puts l.colorize(:magenta) }
  elsif letters == 'YELLOW'
    letters.split('').each { |l| puts l.colorize(:yellow) }
  else
    letters.split('').each { |l| puts l.colorize(:green) }
  end
end

# Loops through from 1 to number selected. Acts as count actions in game
def count_nums(number_choice1)
  i = 1
  loop do
    puts i
    i += 1

    break if i == number_choice1 + 1
  end
end

def fortune(number_choice2, rainbow)
  case number_choice2
  when 1
    rainbow.write "If you eat something and nobody sees you eat it, it has no calories.\n"
  when 2
    rainbow.write "Shame on you for looking here for answers to life.\n"
  when 3
    rainbow.write "Error 404, fortune not found.\n"
  when 4
    rainbow.write "To truly find yourself you should play hide and seek alone.\n"
  when 5
    rainbow.write "You will overcome difficult times.\n"
  when 6
    rainbow.write "He who never makes mistakes never did anything that’s worthy.\n"
  when 7
    rainbow.write "You will marry a professional athlete - if competitive eating can be considered a sport.\n"
  else
    rainbow.write "Perhaps you’ve been focusing too much on spending.\n"
  end
end

def fortune_ascii_art
  begin
    puts File.read('./data/chatterbox-ascii.txt')
  rescue SystemCallError => e
    puts "Something unexpected happened to the image that should be here. You can look into it here: #{e.inspect}".colorize(:red)
  end
end

# prints heading for chatterbox definition
def what_is_ascii
  begin
    puts File.read('./data/what-is-ascii.txt')
  rescue SystemCallError => e
    puts "Something unexpected happened to the image that should be here. You can look into it here: #{e.inspect}".colorize(:red)
  end
end

# prints text in What is Chatterbox menu item
def how_to
  begin
    puts File.read('./data/what-is.txt')
  rescue SystemCallError => e
    puts "Something unexpected happened to the image that should be here. You can look into it here: #{e.inspect}".colorize(:red)
  end
end

  # Spells characters in alternate christmas themed colours
  def spell_c(letters)
    if letters == 'SANTA'
      letters.split('').each { |c| puts c}
    elsif letters == 'RUDOLPH'
      letters.split('').each { |c| puts c.colorize(:red) }
    elsif letters == 'CHRISTMAS ELF'
      letters.split('').each { |c| puts c.colorize(:gray) }
    else
      letters.split('').each { |c| puts c.colorize(:green) }
    end
  end

# prints santa with joke
def santa_ascii
  begin
    puts File.read('./data/santa.txt')
  rescue SystemCallError => e
    puts "Something unexpected happened to the image that should be here. You can look into it here: #{e.inspect}".colorize(:red)
  end
end

def jokes(number_choice2, rainbow)
  case number_choice2
  when 1
    rainbow.write "Why was the snowman looking through the carrots?\nBecause he was picking his nose.\n"
  when 2
    rainbow.write "What do you call buying a piano for the holidays?\nChristmas Chopin\n"
  when 3
    rainbow.write "Why was the turkey in the pop group?\nBecause he was the only one with drumsticks!\n"
  when 4
    rainbow.write "What happens to elves when they are naughty?\nSanta gives them the sack!\n"
  when 5
    rainbow.write "What happened to the man that stole an advent calendar?\nHe got 25 days.\n"
  when 6
    rainbow.write "How is Drake like an elf?\nHe spends all his time wrapping.\n"
  when 7
    rainbow.write "What do you call a reindeer who can't see?\nNo-eye deer.\n"
  else
    rainbow.write "What did Santa do when he went speed dating?\n He pulled a cracker.\n"
  end
end
  
