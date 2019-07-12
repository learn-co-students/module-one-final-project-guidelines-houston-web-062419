def student_menu
    puts "\e[H\e[2J"
    puts "Student Search Menu"
    puts "\nFellow students are a wonderful source of information as you begin your life at Hogwarts. Please type the full name of the student you are searching for to receive their email address.\n\n"
    response = gets.chomp

    if Student.all.find_by(name: response)
        choice = Student.all.find_by(name: response)
        # puts "Name: #{choice.name}"
        puts "Email Address: #{choice.email_address}"

        return_value = @prompt.select("\n\nPlease choose if you would like to try a new student search, return to the main menu, or exit the database") do |menu|
            menu.choice 'Try again', 1
            menu.choice 'Main Menu', 2
            menu.choice 'Exit', 3
        end

        if return_value == 1
            student_menu()
        elsif return_value == 2
            main_menu()
        else return_value == 3
            exit_menu()
        end
    
    else
        puts "\nI'm sorry. There is no student matching the name entered.\n\n"
        choice = @prompt.select("Please choose if you would like to try again, return to the main menu, or exit the database") do |menu|
            menu.choice 'Try again', 1
            menu.choice 'Main Menu', 2
            menu.choice 'Exit', 3
        end

        if choice == 1
            student_menu()
        elsif choice == 2
            main_menu()
        else choice == 3
            exit_menu()
        end
    end
end