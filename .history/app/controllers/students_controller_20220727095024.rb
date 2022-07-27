class StudentsController < ApplicationController
    validates :name, presence: true
    validates :name, length: true

    belongs_to :instructor
end
