class House < ActiveRecord::Base
    has_many :values
    has_many :students, through: :values
end