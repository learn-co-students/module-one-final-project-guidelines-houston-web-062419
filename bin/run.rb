# require 'pry'
require_relative '../config/environment'

class CLI
    @@total_purchase = 0
    total_purchase2 = 0
    # @@total_purchase2 = 0
    def initialize
        @prompt = TTY::Prompt.new 
    end

    def ask_customer_for_item
        item_name = @prompt.ask("What would you like to purchase? (Please add item name)")
        item = Item.find_by(name: item_name)
        while item == nil
            item_name = @prompt.ask("Please enter a valid item (check spelling or capitalization")
            item = Item.find_by(name: item_name)
        end
        return item
    end

    def query_customer(currently_shopping_customer_id)
        item = ask_customer_for_item
        quan = (@prompt.ask('How many would you like to purchase? Must be an integer!')).to_i
        purchase = Purchase.create(customer_id: currently_shopping_customer_id, item_id: item.id, quantity: quan, total: (item.price * quan))
        @@total_purchase += purchase.total
    end

    def run_do_stuff_i_dunno
        @prompt.yes?('Hello and welcome to The Simple Store! Would you like to make a purchases?')
        name = @prompt.ask('Please enter your name:')
        email = @prompt.ask('Please enter your email address:')
        something = Customer.create(name: name, email_address: email)
        id = something.id
        puts "Thanks for creating an account!"
        query_customer(id)
        
        while true
            ask_sec = @prompt.ask('Would you like to add more items? Yes or No')
            if (ask_sec == 'Yes')
                query_customer(id)
            end
            if (ask_sec == 'No')
                break
            end
            while ask_sec == nil
                puts "Please enter Yes or No"
                query_customer(id)
            end 
        end

        puts "Your total is #{@@total_purchase}. Thank you and please come back again."
        
    end
end

ourCLIInstanceObjectThing = CLI.new
ourCLIInstanceObjectThing.run_do_stuff_i_dunno


