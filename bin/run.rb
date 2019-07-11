# require 'pry'
require_relative '../config/environment'

class CLI
    @@total_purchase = 0
    @@all_items = []
    @@your_items = []
    @@quan_total = 0

    def delet_item
    end 

    def sign_up_and_item_quantity
        
        @prompt.ask('Hello and welcome to The Simple Store! Press ENTER to sign up and make a purchase!')

        name = @prompt.ask('Please enter your name (first and last):') do |q|
            q.validate(/\D\s/, 'Please include your name.')
        end
        email = @prompt.ask('Please enter your email address:') do |q|
            q.validate(/\A\w+@\w+\.\w+\Z/, 'Invalid email address') 
        end

        @prompt.ask("Thanks for creating an account! For a list of items sold at our Simple Store press ENTER!")

        list_of_items

        customer_info = Customer.create(name: name, email_address: email)
        id = customer_info.id 
        query_customer(id)

        puts "Your item has been added to you cart!"

        while true
            ask_sec = @prompt.yes?('Would you like to add more items?????')
            if (ask_sec == true)
                query_customer(id)
            end
            if (ask_sec == false)
                state_customer_total
                break 
            end
            while ask_sec == nil
                puts "Please enter Y/N"
                query_customer(id)
            end 
        end

    end
  
    def ask_customer_for_item
        item_name = @prompt.ask("What would you like to purchase? (Please add item name)") do |q|
            q.validate(/\D/, 'Please enter an item name:')
        end
        item = Item.find_by("lower(name)= ?", item_name.downcase)

        while item == nil
            item_name = @prompt.ask("Please enter a valid item (check spelling)")
            
            item = Item.find_by("lower(name)= ?", item_name.downcase)
        end
        return item
    end

    def query_customer(currently_shopping_customer_id)
        item = ask_customer_for_item
        quan = (@prompt.ask('How many would you like to purchase? Must be an integer!')).to_i
        purchase = Purchase.create(customer_id: currently_shopping_customer_id, item_id: item.id, quantity: quan, total: (item.price * quan))
        @@quan_total += quan 
        @@total_purchase += purchase.total
    end

    def initialize
        @prompt = TTY::Prompt.new 
    end

    def list_of_items
        items_list = Item.all.map do |item|
            item.name
        end
        puts items_list
    end

    def state_customer_total
        @prompt.ask("Your total is $#{@@total_purchase}")
    end

    
end


cli = CLI.new
cli.sign_up_and_item_quantity
