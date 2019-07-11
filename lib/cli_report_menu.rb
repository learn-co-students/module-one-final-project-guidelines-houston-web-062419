def report_menu
    puts "\nThe proper use of magic is very important to us here at Hogwarts. Please let us know the name of the witch/wizard that you believe has been using magic unethically and we will remove them from our database so that future students are not unintentionally put into contact with them."

    response = gets.chomp
    user = Student.find_by(name: response)
    user.destroy
end