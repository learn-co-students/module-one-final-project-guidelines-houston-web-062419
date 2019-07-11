# require 'pry'
require_relative '../config/environment'

class CLI
    @@total_purchase = 0
    @@all_items = []
    @@your_items = []
    @@quan_total = 0

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
        state_customer_total

        while true
            ask_sec = @prompt.yes?('Would you like to add more items?????')
            if (ask_sec == true)
                query_customer(id)
                puts "Your item has been added to you cart!"
                state_customer_total
            end
            if (ask_sec == false)
                puts "Your item has been added to you cart!"
                state_customer_total
                while true 
                    query_before_chkout = @prompt.yes?('Before checking out, is there anything you want to remove?')
                    if (query_before_chkout == true)
                        delete_item(id)
                    end
                    if (query_before_chkout == false)
                        break
                    end 
                    while query_before_chkout == nil
                        puts "Please enter Y/N"
                    end 
                end 
                state_customer_total
                break 
            end
            while ask_sec == nil
                puts "Please enter Y/N"
                query_customer(id)
            end 
        end

    end

    def retreiving_deleting_item
        item_name = @prompt.ask("What would you like to delete? (Please add item name)") do |q|
            q.validate(/\D/, 'Please enter an item name:')
        end
        item = Item.find_by("lower(name)= ?", item_name.downcase)

        while item == nil
            item_name = @prompt.ask("Please enter a valid item (check spelling)")
            
            item = Item.find_by("lower(name)= ?", item_name.downcase)
        end
        return item
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

    def delete_item(go_delete_id)
        item = retreiving_deleting_item
        quan_dlt = (@prompt.ask('How many would you like to delete?')).to_i
        purchase = Purchase.create(customer_id: go_delete_id, item_id: item.id, quantity: quan_dlt, total: (item.price * quan_dlt))
        @@total_purchase -= purchase.total
        # jkll;
    end

    def chkout 
        puts "ready to checkout"

    end 

    def state_customer_total
        @prompt.ask("Your total is $#{@@total_purchase}")
    end

    
end


cli = CLI.new
cli.sign_up_and_item_quantity
