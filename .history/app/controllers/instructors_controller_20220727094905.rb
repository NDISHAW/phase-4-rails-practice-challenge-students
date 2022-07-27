class InstructorsController < ApplicationController
    validates :name, presence: true

    has_many :students
end
