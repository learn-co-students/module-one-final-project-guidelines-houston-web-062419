    prompt = TTY::Prompt.new

    puts "Welcome to Hogwarts!"
    puts "Please enter your information so we can add you to the Sorting Database."
    name = prompt.ask('What is your name?', default: ENV['USER'])
    puts name
    email = prompt.ask('What is your email address? (By entering email address, you agree to receive school communications via email...as well as owl post.)')
    puts email
    puts "Thank you! You have been added"

    Student.create(name: name, email_address: email)

    prompt = TTY::Prompt.new

    choice = prompt.select("\nPlease choose from the following options:", %w(Students Houses Values Exit))
    puts choice

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