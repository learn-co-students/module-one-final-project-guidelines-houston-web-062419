@prompt = TTY::Prompt.new

def welcome
    puts "\e[H\e[2J"
    puts "\nWelcome to Hogwarts!\n"
    puts "\nPlease enter your information so we can add you to the Sorting Database.\n\n"
    name = @prompt.ask('What is your name?', default: ENV['USER'])
    puts name
    email = @prompt.ask('What is your email address? (By entering your email address, you are agreeing to receive school communications via email...as well as owl post.)')
    puts email
    puts "\nThank you! You have been added to the Sorting Database.\n\n\n"

    Student.create(name: name, email_address: email)
end