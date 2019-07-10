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

def choice
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
        return
    end
end

def student_menu
    # choice = @prompt.select("\nWould you like to search through names or email addresses?:") do |menu|
    #     menu.choice 'Names', 1
    #     menu.choice 'Email Addresses', 2
    # end
    puts "\nPlease type the full name of the student you are searching for.\n\n"
    response = gets.chomp
# end

# def student_info(response)
    if Student.name.include?(response)
        # Student.all.find_by(name: response)
        puts "Name: #{response}\n"
    # end
#         puts "Email Address: #{Student.response.email_address}\n\n"
    else
        puts "\nUnfortunately, there is no student matching the name entered.\n"
#         puts "Please try again or press 'q' to return to the main menu."
    end
end

def house_menu
    puts "\nPlease type the full name of the house you are searching for.\n\n"
    response = gets.chomp
end

def value_menu
    choice = @prompt.select("Which value do you uphold?:") do |menu|
        menu.choice 'courage', 1
        menu.choice 'ambition', 2
        menu.choice 'loyalty', 3
        menu.choice 'intelligence', 4
        menu.choice 'bravery', 5
        menu.choice 'resourcefulness', 6
    end

    # if choice == 1
    #     student_menu()
    # elsif choice == 2
    #     house_menu()
    # elsif choice == 3
    #     value_menu()
    # else choice == 4
    #     return
    # end
end





    # student_selection = $prompt.select("Please choose a student to see their contact info") do |menu|
    #     menu.enum "."
    #     users_students(current_user).each_with_index do |student, index|
    #         menu.choice student.name, index
    #     end
    # end
    # selected_student = users_students(current_student)[student_selection]
    # student_information(current_user, selected_student)


    # item = Item.find_by(name: item_name)

#   def choose_student
    # student_choices = [Student.name, {name: "Exit", value: "exit"}].flatten
    # prompt = TTY::Prompt.new
    # # chosen_student = prompt.select("Please choose your student", student_choices)
    #   if choice != "exit"
    # choice_student = Student.find_by(name)
    #   else
    #     choice_student = "exit"
    #   end


    #   def main_menu(current_user)
    #     menu_selection = $prompt.select('Please choose an option') do |menu|
    #         menu.enum "."
    #         menu.choice "Students", 1
    #         menu.choice "Houses", 2
    #         menu.choice "Values", 3
    #         menu.choice "Exit", 4
    #     end
    
    #     case menu_selection
    #     when 1
    #         your_student(current_user)
    #     when 2
    #         your_house(current_user)
    #     when 3
    #         your_value(current_user)
    #     when 4
    #         exit
    #     end
    # end

# ask_name

# def first_prompt
#     prompt = TTY::Prompt.new
#     clear_logs
#     puts "Welcome to Hogwarts!"
#     options = {"Filter by Students":1, "Filter by Houses":2, "Search by Values":3, "Exit History Database":4}
#     return_value = prompt.select("Please begin by selecting one of the options:",options)
#     first_menu(return_value)
# end

# def first_menu(first_response)
#     prompt = TTY::Prompt.new
#     clear_logs
#     case first_response
#     when 1
#         clear_logs
        
#         fill_hash = {}
#         Student.all.order(:name).each do |s|
#             fill_hash["#{s.name}"] = student.name 
#         end
        
#         return_value = prompt.select("\nSelect a student:\n",fill_hash)
        
#         found_student = Student.find_by(name: return_value)
#         student_menu_1(found_student)
#     when 2
#         clear_logs

#         fill_hash = {}
#         House.all.order(:name).each do |h|
#             if h.name != ""
#                 fill_hash["#{h.name}"] = industry.name
#             end
#         end

#         return_value = prompt.select("\nSelect a house:\n\n",fill_hash)
#         found_house = House.find_by(name: return_value)
#         house_menu_1(found_house)
#     when 3
#         clear_logs
#         puts "\nPlease type the name of the value you are looking for.\n\n"
#         second_response = gets.chomp
#         value_menu_1(second_response)
#     end
# end