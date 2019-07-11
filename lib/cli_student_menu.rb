def student_menu
    puts "\nPlease type the full name of the student you are searching for.\n\n"
    response = gets.chomp

    if Student.all.find_by(name: response)
        choice = Student.all.find_by(name: response)
        puts "Name: #{choice.name}"
        puts "Email Address: #{choice.email_address}"

        return_value = @prompt.select("Please choose if you would like to try a new student search, return to the main menu, or exit the database") do |menu|
            menu.choice 'Try again', 1
            menu.choice 'Main Menu', 2
            menu.choice 'Exit', 3

            if choice == 1
                student_menu()
            elsif choice == 2
                main_menu()
            else choice == 3
                exit_menu()
            end
        end
    
    else
        puts "I'm sorry. There is no student matching the name entered."
        return_value = @prompt.select("Please choose if you would like to try again, return to the main menu, or exit the database") do |menu|
            menu.choice 'Try again', 1
            menu.choice 'Main Menu', 2
            menu.choice 'Exit', 3

            if choice == 1
                student_menu()
            elsif choice == 2
                main_menu()
            else choice == 3
                exit_menu()
            end
        end
    end
end