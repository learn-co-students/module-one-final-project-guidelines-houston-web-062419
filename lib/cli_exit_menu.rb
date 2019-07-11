def exit_menu
    @prompt.yes?('Are you sure you want to exit?')
        if Y
            return
        else
            main_menu()
    end
end