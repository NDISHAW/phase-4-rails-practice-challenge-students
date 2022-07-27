class InstructorsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        instructor = Instructor.all
        render json: instructor
    end
    def show
        instructor = Instructor.find_by(params[:id])
        render json: instructor, include: :students
    end
    def create
        # instructor = Instructor.create!(instructor_params)
        render json: instructor, status: :created
    end
    def destroy
        instructor = Instructor.find(params[:id])
        instructor.destroy
        head :no_content
    end
    private

    def instructor_params
        params.permit(:name)
    end
    
    def find_instructor
        Instructure.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Instructor not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
