<<<<<<< HEAD:db/migrate/20190709152540_item.rb
class CreateItem < ActiveRecord::Migration[5.0]
=======
class CreateItems < ActiveRecord::Migration[5.0]
>>>>>>> 094948b540fbd0cffaa4cab2af4dfeefe2679a66:db/migrate/20190709152540_create_items.rb
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
    end
  end
end
