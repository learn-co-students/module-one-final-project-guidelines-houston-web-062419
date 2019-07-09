prompt = TTY::Prompt.new 




prompt.ask('Hello! Please type "ok" to sign up and make purchases!')
name = prompt.ask('Please enter your name:')
email = prompt.ask('Please enter your email:')
Customer.create(name: name, email: email)

