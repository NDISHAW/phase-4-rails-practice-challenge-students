class StudentsController < ApplicationController
    validates :name, presence: true
    validates :name,

    belongs_to :instructor
end
