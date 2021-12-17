def christmas_edition
    puts 'You have opted for the Christmas Edition'.colorize(:green)
      system "clear"

      characters = { 'Santa': 1, 'Rudolph': 2, 'Christmas Elf': 3, 'Grinch': 4 }
      character_choice = prompt.select('Pick a character:', characters)
      puts "You have selected #{characters.key(character_choice)}"
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
end