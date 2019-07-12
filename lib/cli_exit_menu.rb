def exit_menu
    puts "\e[H\e[2J"
    choice = @prompt.yes?('Are you sure you want to exit?')
    if choice == true
        exit
    else
        main_menu()
    end
end