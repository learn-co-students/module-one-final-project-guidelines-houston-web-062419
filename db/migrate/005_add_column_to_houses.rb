class AddColumnToHouses < ActiveRecord::Migration[4.2]
    def change
        add_column :houses, :info, :string
    end
end