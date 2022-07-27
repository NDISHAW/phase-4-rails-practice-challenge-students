class StudentsController < ApplicationController
    validates :name, presence: true
    validates :name, numericality: 

    belongs_to :instructor
end
