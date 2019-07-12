# def self.clear
#     system ('clear')
#     # puts "\e[H\e[2J"
# end


def exit_menu
    choice = @prompt.yes?('Are you sure you want to exit?')
    if choice == true
        exit
        # self.clear
    else
        main_menu()
    end
end