def value_menu

    choice = @prompt.select("Which value do you believe you embody the most?:") do |menu|
        menu.choice 'Courage', 1
        menu.choice 'Ambition', 2
        menu.choice 'Loyalty', 3
        menu.choice 'Intelligence', 4
        menu.choice 'Bravery', 5
        menu.choice 'Resourcefulness', 6
    end

    if choice == 1
        puts "\n\nYou may like Gryffindor! You also share values with Harry Potter! Go to the Student Search Menu to see how to contact him or the House Search Menu to learn information about the house.\n\n\n"
    elsif choice == 2
        puts "\n\nYou may like Slytherin! You also share values with Draco Malfoy! Go to the Student Search Menu to see how to contact him or the House Search Menu to learn information about the house.\n\n\n"
    elsif choice == 3
        puts "\n\nYou may like Hufflepuff! You also share values with Cedric Diggory! Go to the Student Search Menu to see how to contact him or the House Search Menu to learn information about the house.\n\n\n"
    elsif choice == 4
        puts "\n\nYou may like Ravenclaw! You also share values with Luna Lovegood! Go to the Student Search Menu to see how to contact her or the House Search Menu to learn information about the house.\n\n\n"
    elsif choice == 5
        puts "\n\nYou may like Gryffindor! You also share values with Hermione Granger! Go to the Student Search Menu to see how to contact her or the House Search Menu to learn information about the house.\n\n\n"
    else choice == 6
        puts "\n\nYou may like Slytherin! You also share values with Pansy Parkinson! Go to the Student Search Menu to see how to contact her or the House Search Menu to learn information about the house.\n\n\n"
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