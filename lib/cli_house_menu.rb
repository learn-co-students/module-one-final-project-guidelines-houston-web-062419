def house_menu
    puts "\nPlease type the name of the house you are searching for.\n\n"
    response = gets.chomp

    if House.all.find_by(name: response)
        choice = House.all.find_by(name: response)
        puts "/nName: #{choice.name}"
        puts "Info: #{choice.info}"
        
        return_value = @prompt.select("Please choose if you would like to try a new house search, return to the main menu, or exit the database") do |menu|
            menu.choice 'Try again', 1
            menu.choice 'Main Menu', 2
            menu.choice 'Exit', 3

            if choice == 1
                house_menu()
            elsif choice == 2
                main_menu()
            else choice == 3
                exit_menu()
            end
        end
    
    else
        puts "I'm sorry. There is no house matching the name entered."
        return_value = @prompt.select("Please choose if you would like to try again, return to the main menu, or exit the database") do |menu|
            menu.choice 'Try again', 1
            menu.choice 'Main Menu', 2
            menu.choice 'Exit', 3

            if choice == 1
                house_menu()
            elsif choice == 2
                main_menu()
            else choice == 3
                exit_menu()
            end
        end
    end
end