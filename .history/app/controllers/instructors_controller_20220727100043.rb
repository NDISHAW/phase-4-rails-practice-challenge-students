class InstructorsController < ApplicationController
    def index
        instructor = Instructor.all
        render json: instructor
    end
    def show
        instructor = Instructor.find_by(params[:id])
        render json: instructor
    end
  def create
    camper = Camper.create!(camper_params)
    render json: camper, status: :created
  end

end
