require_relative '../config/environment'

class CLI
    def initialize
        # binding.pry
        @prompt = TTY::Prompt.new 
        
    end
    
    def list_of_items
            # binding.pry
        @items_list = Item.all.map do |item|
            item.name
        end
        puts @items_list
    end
    
   

    def ask_customer_for_item

        item_name = @prompt.ask("What would you like to purchase? (Please add item name)")
        item = Item.find_by("lower(name)= ?", item_name.downcase)
        while item == nil
            item_name = @prompt.ask("Please enter a valid item (check spelling or capitalization")
            
            item = Item.find_by(name: item_name)
        end
        return item
        # binding.pry

        
    end

    def sign_up_and_item_quantity
        @prompt.yes?('Hello and welcome to The Simple Store! Would you like to make a purchases?')

        name = @prompt.ask('Please enter your name:') do |q|
            q.validate(/\D\s/, 'Please include your name.')
        end
        email = @prompt.ask('Please enter your email address:') do |q|
            q.validate(/\A\w+@\w+\.\w+\Z/, 'Invalid email address') 
            # prompt.ask('What is your email?') { |q| q.validate :email }
        end
        
        Customer.create(name: name, email_address: email)

        @prompt.ask("Thanks for creating an account! For a list of items sold at our Simple Store press ENTER!")


        list = list_of_items
        
    
        item = ask_customer_for_item
        quan = (@prompt.ask('How many would you like to purchase? Must be an integer!')).to_i
        Purchase.create(customer_id: self, item_id: item.id, quantity: quan, total: (item.price * quan))
    end
end



cli = CLI.new
cli.sign_up_and_item_quantity