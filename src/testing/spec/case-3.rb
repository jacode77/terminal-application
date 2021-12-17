def what_is_chatterbox
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
    main_menu
end