class CreateValues < ActiveRecord::Migration[4.2]
    def change
        create_table :values do |t|
            t.string :name
            t.integer :student_id
            t.integer :house_id
            t.string :description
            t.float :overall_score
            t.float :astronomy_score
            t.float :charms_score
            t.float :defense_score
            t.float :flying_score
            t.float :herbology_score
            t.float :history_score
            t.float :potions_score
            t.float :transfiguration_score
        end
    end
end