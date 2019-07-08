git class Item < ActiveRecord::Base

        has_many::customers
        has_many::customers through::purchase

end