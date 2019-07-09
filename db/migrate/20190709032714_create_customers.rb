class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email_address
    end
  end
end

# rake db:create_migration NAME=create_customers <<<typed this into terminal 
# and ^this migration file was created. Could not create using rake if a different file had anything in it.
# just stated uninitialized constant Item <<< I had created the seeds file "Item". 


# rake db:migrate <<<<< written in terminal will add this table bloc ^ created 
# above will become a schema of this new table!!


# before migrating you need to find out if you need to write a gets.chomp type method in here since 
# I want the customer to input their information.

#  add column at 39:45 on 1st youtube video

# NEVER REMOVE THINGS FROM SCHEMA FILE!! MIGRATIONS WILL DO THAT FOR YOU

# rake db:rollback -goes back to previous version. 