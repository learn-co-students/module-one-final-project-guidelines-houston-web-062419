prompt = TTY::Prompt.new 
# asks questions in command line


def ask_user_to_sign_up_or_whatever
    name = prompt.ask('Please enter your name:')
    email = 

    Customer.create(name: name, email: email)
end

ask_user_to_sign_up_or_whatever