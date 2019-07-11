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