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
        
        @@customer = Customer.create(name: name, email_address: email)

        @prompt.ask("Thanks for creating an account! For a list of items sold at our Simple Store press ENTER!")

        list_of_items

        item = ask_customer_for_item

        quan = 0
        while quan == 0
            quan = @prompt.ask('How many would you like to purchase? Must be an integer!').to_i
        end
        

        first_purchase = Purchase.create(customer_id: @@customer.id, item_id: item.id, quantity: quan, total: (item.price * quan))
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

    def query_customer(currently_shopping_customer_id)
        item = ask_customer_for_item
        quan = (@prompt.ask('How many would you like to purchase? Must be an integer!')).to_i
        purchase = Purchase.create(customer_id: currently_shopping_customer_id, item_id: item.id, quantity: quan, total: (item.price * quan))
        @@total_purchase += purchase.total
    end

    def purchase_another?
        while true
            ask_sec = @prompt.yes?('Would you like to add more items?')
            if (ask_sec == true)
                query_customer(@@customer.id)

            end
            if (ask_sec == false)
                @prompt.ask("Your total is $#{@@total_purchase}. Press ENTER to continue")
                begin_checkout
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
        answer = @prompt.yes?('Are you ready to checkout?')
        if (answer == true)
            review_items 
            checkout
    # BREAKS HERE NEED TO ADD LIST OF PURCHASED ITEMS IN REVIEW_ITEMS AND MAKE CHECKOUT METHOD
        end 
        if
            (answer == false)
            query_customer(@@customer.id)
        end
    end 

    def review_items
        # LIST CUSTOMERS PURCHASES AND GIVE CUSTOMER CHANCE TO MODIFY OR DELETE A PURCHASE ITEM
    end

    def checkout
        # MAKES CHECKOUT METHOD (ASKS FOR SHIPPING INFO) THANKS CUSTOMER AND STATES ITEMS ARE BEING SHIPPED
    end

end



cli = CLI.new
cli.sign_up_and_item_quantity
