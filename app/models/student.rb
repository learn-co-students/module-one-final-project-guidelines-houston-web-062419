class Student < ActiveRecord::Base
    has_many :values
    has_many :houses, through: :values
end