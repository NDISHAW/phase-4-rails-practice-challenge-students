class InstructorsController < ApplicationController
    def index
        instructor = Instructor.all
        render json: instructor
    end
    def show
        instructor = Instructor.find_by
        render json: instructor
    end
end
