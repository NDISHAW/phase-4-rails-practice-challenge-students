class Student < ApplicationRecord
    validates :name, presence: true
    validates :age, 
    belongs_to :instructor
end
