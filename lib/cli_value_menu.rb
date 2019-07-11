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
        puts "\nYou may like House Gryffindor! You also share values with Harry Potter! Go to the Student Search Menu to see how to contact him. "
    elsif choice == 2
        puts "\nYou may like House Slytherin! You also share values with Draco Malfoy! Go to the Student Search Menu to see how to contact him. "
    elsif choice == 3
        puts "\nYou may like House Hufflepuff! You also share values with Cedric Diggory! Go to the Student Search Menu to see how to contact him. "
    elsif choice == 4
        puts "\nYou may like House Ravenclaw! You also share values with Luna Lovegood! Go to the Student Search Menu to see how to contact her. "
    elsif choice == 5
        puts "\nYou may like House Gryffindor! You also share values with Hermione Granger! Go to the Student Search Menu to see how to contact her. "
    else choice == 6
        puts "\nYou may like House Slytherin! You also share values with Pansy Parkinson! Go to the Student Search Menu to see how to contact her. "
    end

choice = @prompt.select("Please choose if you would like to try a new value search, return to the main menu, or exit the database") do |menu|
    menu.choice 'Try again', 1
    menu.choice 'Main Menu', 2
    menu.choice 'Exit', 3
end

if choice == 1
    value_menu()
elsif choice == 2
    main_menu()
else choice == 3
    exit_menu()
end
end