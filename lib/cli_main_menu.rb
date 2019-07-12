def main_menu
    puts "\e[H\e[2J"
    puts "\nMain Menu"
    choice = @prompt.select("Please choose from the following options:") do |menu|
        menu.choice 'Accio Student Information', 1
        menu.choice 'Accio House Information', 2
        menu.choice 'Accio Value Information', 3
        menu.choice 'Update Student Information', 4
        menu.choice 'Report Student', 5
        menu.choice 'Exit', 6
    end

    if choice == 1
        student_menu()
    elsif choice == 2
        house_menu()
    elsif choice == 3
        value_menu()
    elsif choice == 4
        update_info_menu()
    elsif choice == 5
        report_menu()
    else choice == 6
        exit_menu()

    end
end