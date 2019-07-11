def report_menu
    puts "\nThe proper use of magic is very important to us here at Hogwarts. Please let us know the name of the witch/wizard that you believe has been using magic unethically and we will remove them from our database so that future students are not unintentionally put into contact with them."
    puts "\nReport full name:"
    response = gets.chomp
    user = Student.find_by(name: response)
    user.destroy

    return_value = @prompt.select("Thank you for your candor. Please choose an option:") do |menu|
        menu.choice 'Report another', 1
        menu.choice 'Main Menu', 2
        menu.choice 'Exit', 3
    end

    if return_value == 1
        report_menu()
    elsif return_value == 2
        main_menu()
    else return_value == 3
        exit_menu()
    end
end