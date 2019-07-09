class CreateValues < ActiveRecord::Migration[4.2]
    def change
        create_table :values do |t|
            t.string :name
            t.integer :student_id
            t.integer :house_id
            t.string :description
        end
    end
end