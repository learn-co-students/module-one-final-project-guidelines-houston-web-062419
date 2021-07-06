def update_info_menu
    puts "\e[H\e[2J"
    puts "Update Student Info"
    puts "Please enter the full name of the student whose email address requires updating."
    response = gets.chomp
    user = Student.find_by(name: response)
    puts "The email address on file is #{user.email_address}"
    puts "Please enter the new email address."
    new_response = gets.chomp
    user.email_address = new_response
    user.save
    puts "Thanks! The email address has been updated."

    return_value = @prompt.select("Please choose if you would like to try a new student search, return to the main menu, or exit the database") do |menu|
        menu.choice 'Try again', 1
        menu.choice 'Main Menu', 2
        menu.choice 'Exit', 3
    end

    if return_value == 1
        update_info_menu()
    elsif return_value == 2
        main_menu()
    else return_value == 3
        exit_menu()
    end
end