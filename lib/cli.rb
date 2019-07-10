@prompt = TTY::Prompt.new

def welcome

    puts "Welcome to Hogwarts!"
    puts "Please enter your information so we can add you to the Sorting Database."
    name = @prompt.ask('What is your name?', default: ENV['USER'])
    puts name
    email = @prompt.ask('What is your email address? (By entering email address, you agree to receive school communications via email...as well as owl post.)')
    puts email
    puts "Thank you! You have been added."

    Student.create(name: name, email_address: email)
end

def main_menu
    puts "\nMain Menu"
    choice = @prompt.select("Please choose from the following options:") do |menu|
        menu.choice 'Accio Student Information', 1
        menu.choice 'Accio House Information', 2
        menu.choice 'Accio Value Information', 3
        menu.choice 'Exit', 4
    end

    if choice == 1
        student_menu()
    elsif choice == 2
        house_menu()
    elsif choice == 3
        value_menu()
    else choice == 4
        exit()
    end
end

def student_menu (response = gets.chomp)

    puts "\nPlease type the full name of the student you are searching for.\n\n"
    # response = gets.chomp

    if Student.name.include?(response)
        student_choice = Student.all.find_by(name: response)
        puts "Name: #{student_choice.name}"
        puts "Email Address: #{student_choice.email_address}"
        return_value = @prompt.select("Please choose if you would like to try a new student search, return to the main menu, or exit the database") do |menu|
            menu.choice 'Try again', 1
            menu.choice 'Main Menu', 2
            menu.choice 'Exit', 3

            if choice == 1
                student_menu()
            elsif choice == 2
                main_menu()
            else choice == 3
                exit()
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
                exit()
            end
        end
    end
end

def house_menu (response = gets.chomp)
    puts "\nPlease type the name of the house you are searching for.\n\n"
    # response = gets.chomp

    if House.name.include?(response)
        house_choice = House.all.find_by(name: response)
        puts "Name: #{house_choice.name}"
        puts "Info: #{house_choice.info}"
        return_value = @prompt.select("Please choose if you would like to try a new house search, return to the main menu, or exit the database") do |menu|
            menu.choice 'Try again', 1
            menu.choice 'Main Menu', 2
            menu.choice 'Exit', 3

            if choice == 1
                house_menu()
            elsif choice == 2
                main_menu()
            else choice == 3
                exit()
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
                exit()
            end
        end
    end
end

def value_menu
    choice = @prompt.select("Which value do you believe you most possess?:") do |menu|
        menu.choice 'Courage', 1
        menu.choice 'Ambition', 2
        menu.choice 'Loyalty', 3
        menu.choice 'Intelligence', 4
        menu.choice 'Bravery', 5
        menu.choice 'Resourcefulness', 6
    end

    if choice == 1
        puts "You may like House Gryffindor! You also share values with Harry Potter! Go to the Student Search Menu to see how to contact him. "
    elsif choice == 2
        puts "You may like House Slytherin! You also share values with Draco Malfoy! Go to the Student Search Menu to see how to contact him. "
    elsif choice == 3
        puts "You may like House Hufflepuff! You also share values with Cedric Diggory! Go to the Student Search Menu to see how to contact him. "
    elsif choice == 4
        puts "You may like House Ravenclaw! You also share values with Luna Lovegood! Go to the Student Search Menu to see how to contact her. "
    elsif choice == 5
        puts "You may like House Gryffindor! You also share values with Hermione Granger! Go to the Student Search Menu to see how to contact her. "
    else choice == 6
        puts "You may like House Slytherin! You also share values with Pansy Parkinson! Go to the Student Search Menu to see how to contact her. "
    end
end