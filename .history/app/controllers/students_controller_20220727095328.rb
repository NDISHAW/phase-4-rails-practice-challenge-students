class StudentsController < ApplicationController
    validates :name, presence: true
    validates :name, numericality: greater_than_or_equal_to: 0

    belongs_to :instructor
end
