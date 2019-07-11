class Purchase < ActiveRecord::Base 
    belongs_to :customer
    belongs_to :item

    def total
        self.item.price * self.quantity
    end
end