require_relative '../config/environment'

class CLI
    def initialize
        @prompt = TTY::Prompt.new 
    end

    def ask_customer_for_item
        item_name = @prompt.ask("Thanks for creating an account! What would you like to purchase? (Please add item name)")
        item = Item.find_by(name: item_name)
        while item == nil
            item_name = @prompt.ask("Please enter a valid item (check spelling or capitalization")
            item = Item.find_by(name: item_name)
        end
        # binding.pry

        return item
    end

    def run_do_stuff_i_dunno
        @prompt.yes?('Hello and welcome to The Simple Store! Would you like to make a purchases?')
        name = @prompt.ask('Please enter your name:')
        email = @prompt.ask('Please enter your email address:')
        Customer.create(name: name, email_address: email)
    
        item = ask_customer_for_item
        quan = (@prompt.ask('How many would you like to purchase? Must be an integer!')).to_i
        Purchase.create(customer_id: self, item_id: item.id, quantity: quan, total: (item.price * quan))
    end
end

ourCLIInstanceObjectThing = CLI.new
ourCLIInstanceObjectThing.run_do_stuff_i_dunno