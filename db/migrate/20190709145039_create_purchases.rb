class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.integer :customer_id
      t.integer :item_id
      t.integer :quantity
      t.integer :total
    end
  end
end
