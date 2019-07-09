require_relative '../config/environment'

class CLI
    def initialize
        @prompt = TTY::Prompt.new 
    end
    
    def list_of_items
    # binding.pry
        return Item.all.select do |item|
            item.name
        end
    end
    
   

    def ask_customer_for_item
        @prompt.ask("Thanks for creating an account! For a list of items sold at our Simple Store press ENTER!")

        list_of_items

        item_name = @prompt.ask("What would you like to purchase? (Please add item name)")
        item = Item.find_by("lower(name)= ?", item_name.downcase)
        while item == nil
            item_name = @prompt.ask("Please enter a valid item (check spelling or capitalization")
            
            item = Item.find_by(name: item_name)
        end
        # binding.pry

        
    end

    def sign_up_and_item_quantity
        @prompt.yes?('Hello and welcome to The Simple Store! Would you like to make a purchases?')
        name = @prompt.ask('Please enter your name:')
        email = @prompt.ask('Please enter your email address:') do |q|
            q.validate(/\A\w+@\w+\.\w+\Z/, 'Invalid email address')
          end
        # email = @prompt.ask('Please enter your email address:')
        Customer.create(name: name, email_address: email)
    
        item = ask_customer_for_item
        quan = (@prompt.ask('How many would you like to purchase? Must be an integer!')).to_i
        Purchase.create(customer_id: self, item_id: item.id, quantity: quan, total: (item.price * quan))
    end
end



cli = CLI.new
cli.sign_up_and_item_quantity