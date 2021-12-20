def helper_flags
    if ARGV.length > 0
        flag, *rest = ARGV
        ARGV.clear

        case flag
        when '-help'
            puts "Refer to chatterbox README.md or select menu option 'What is Chatterbox?'"
            exit
        when '-info'
            puts "This program is running #{RUBY_VERSION}"
        else 
            puts "Invalid argument, see the readme for options"
        end
    end
end