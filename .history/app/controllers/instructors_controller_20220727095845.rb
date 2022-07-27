class InstructorsController < ApplicationController
    def index
        instructor = Instructor.all
        render json: instructor
    end
    def show
        instructor = Instructor.find_by(params[])
        render json: instructor
    end
end