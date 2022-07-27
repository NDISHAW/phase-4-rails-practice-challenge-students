class InstructorsController < ApplicationController
    def index
        instructor = Instructor.all
        ren
    end
end
