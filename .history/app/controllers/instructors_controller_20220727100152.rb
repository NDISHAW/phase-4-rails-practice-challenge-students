class InstructorsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        instructor = Instructor.all
        render json: instructor
    end
    def show
        instructor = Instructor.find_by(params[:id])
        render json: instructor
    end
  def create
    camper = Camper.create!(instructor_params)
    render json: camper, status: :created
  end

  private

  def instructor_params
    params.permit(:name)
  end
  
  def find_instructor
    Camper.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Camper not found" }, status: :not_found
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
end