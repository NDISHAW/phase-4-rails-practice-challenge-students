class InstructorsController < ApplicationController
    def index
        instructor = Instructor.all
        render json: instructor
    end
    def index
        instructor = Instructor.all
        render json: instructor
    end
end
