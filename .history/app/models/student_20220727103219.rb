class Student < ApplicationRecord
    validates :name, presence: true
    validates: 
    belongs_to :instructor
end
