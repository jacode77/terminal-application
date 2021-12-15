require 'colorize'

# prints banner in welcome page
def banner_ascii
  puts File.read('./banner.txt')
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
    rainbow.write 'If you eat something and nobody sees you eat it, it has no calories.'
  when 2
    rainbow.write 'Shame on you for looking here for answers to life.'
  when 3
    rainbow.write 'Error 404, fortune not found.'
  when 4
    rainbow.write 'To truly find yourself you should play hide and seek alone.'
  when 5
    rainbow.write 'You will overcome difficult times.'
  when 6
    rainbow.write 'He who never makes mistakes never did anything that’s worthy.'
  when 7
    rainbow.write 'You will marry a professional athlete - if competitive eating can be considered a sport.'
  else
    rainbow.write 'Perhaps you’ve been focusing too much on spending.'
  end
end

def fortune_ascii_art
  puts File.read('./chatterbox-ascii.txt')
end
