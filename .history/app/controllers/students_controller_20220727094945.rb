class StudentsController < ApplicationController
    validates :name, presence: true
    

    belongs_to :instructor
end
