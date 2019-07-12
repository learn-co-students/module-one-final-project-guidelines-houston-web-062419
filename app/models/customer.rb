class Customer < ActiveRecord::Base 
    has_many :purchases
    has_many :items, through: :purchases

    def add_purchase(item, quan)
        existing_purchase = Purchase.find_by(item_id: item.id, customer_id: self.id)
        if existing_purchase == nil
            return purchase = Purchase.create(customer_id: self.id, item_id: item.id, quantity: quan)
        else
            existing_purchase.quantity = existing_purchase.quantity + quan
            existing_purchase.save
            return existing_purchase
        end
    end

    def remove_purchase(item, quan)
        existing_purchase = Purchase.find_by(item_id: item.id, customer_id: self.id)
        existing_purchase.update(quantity: existing_purchase.quantity - quan)
        return existing_purchase
    end
end
