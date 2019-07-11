# require 'pry'
require_relative '../config/environment'

class CLI
    @@total_purchase = 0

    attr_accessor :customer

    def sign_up_and_item_quantity
        
        @prompt.ask('Hello and welcome to The Simple Store! Press ENTER to sign up and make a purchase!')

        name = @prompt.ask('Please enter your name (first and last):') do |q|
            q.validate(/\D\s/, 'Please include your name.')
        end
        email = @prompt.ask('Please enter your email address:') do |q|
            q.validate(/\A\w+@\w+\.\w+\Z/, 'Invalid email address') 
            # prompt.ask('What is your email?') { |q| q.validate :email }
        end
        
        @@customer_id = Customer.create(name: name, email_address: email).id

        @prompt.ask("Thanks for creating an account! For a list of items sold at our Simple Store press ENTER!")

        list_of_items

        item = ask_customer_for_item

        quan = 0
        while quan == 0
            quan = @prompt.ask('How many would you like to purchase? Must be an integer!').to_i
        end
        

        first_purchase = get_current_customer.add_purchase(item, quan)
        @@total_purchase += first_purchase.total
        
        puts "Your item has been added to you cart!"
        purchase_another?
        
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

    def query_customer(currently_shopping_customer)
        item = ask_customer_for_item
        quan = (@prompt.ask('How many would you like to purchase? Must be an integer!')).to_i
        purchase = currently_shopping_customer.add_purchase(item, quan)
        @@total_purchase += purchase.total
        puts "Your item has been added to you cart!"
    end

    def purchase_another?
        
        while 
            ask_sec = @prompt.select("Would you like to add more items?", %w(yes no))
            if (ask_sec == "yes")
                query_customer(get_current_customer)
                
            end
            if (ask_sec =="no")
                print_current_items
                begin_checkout
                break
            end
        end
    end

    def initialize
        # binding.pry
        @prompt = TTY::Prompt.new 
        
    end

    def list_of_items
        # binding.pry
        items_list = Item.all.map do |item|
            item.name
        end
        puts items_list
    end

    def begin_checkout

        answer = @prompt.select("Are you ready to checkout?", %w(yes no))
        
            if (answer == "yes")
                finished_modifying = false
                while (!finished_modifying)
                    finished_modifying = modify_order?
                end
                checkout
                
            end 
            if (answer == "no")
                query_customer(get_current_customer)
            end
    end 

    def print_current_items
        @prompt.ask("Your total is $#{@@total_purchase}. Press ENTER to continue")
        get_current_customer.purchases.each do |purchase|
            item = purchase.item
            puts "Item name:#{item.name} Price: $#{item.price} Quantity:#{purchase.quantity} Total: $#{purchase.total}"
        end
    end

    def modify_order?
        while
            answer = @prompt.select("Before checking out, is there anything you want to modify?", %w(yes no))
            if (answer == "yes")
                delete_item(get_current_customer)
                print_current_items
                return false
            end
            if (answer == "no")
                return true
            end  
        end
    end 

    def delete_item(customer)
        item = retreiving_deleting_item
        quan_dlt = (@prompt.ask('How many would you like to delete?')).to_i
        purchase = customer.remove_purchase(item, quan_dlt)
        @@total_purchase -= item.price * quan_dlt
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

    def checkout
        @prompt.ask("Please enter your shipping address:")
        @prompt.ask("Your order will be processed and shipped! Thank you for shopping at The Simple Store!")
        
    end

    def get_current_customer
        Customer.find(@@customer_id)
    end
    
end





cli = CLI.new
cli.sign_up_and_item_quantity
