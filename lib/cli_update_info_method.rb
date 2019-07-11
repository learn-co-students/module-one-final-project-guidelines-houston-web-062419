def update_info_menu
    puts "Please enter the full name of the student whose email address requires updating."
    response = gets.chomp
    user = Student.find_by(name: response)
    puts "The email address on file is #{user.email_address}"
    puts "Please enter the new email address."
    new_response = gets.chomp
    user.email_address = new_response
    user.save
end