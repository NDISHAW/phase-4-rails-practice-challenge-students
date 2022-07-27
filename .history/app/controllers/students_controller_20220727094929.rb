class StudentsController < ApplicationController
    validates :name, presence: true

    belongs_to :instr
end
