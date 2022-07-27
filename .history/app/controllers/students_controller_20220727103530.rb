class StudentsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        student = Instructor.all
        render json: student
    end
    def show
        student = Instructor.find_by(params[:id])
        render json: student, include: :students
    end
    def create
        student = find_instructor
        render json: student, status: :created
    end

    private

    def instructor_params
        params.permit(:name)
    end
    
    def find_instructor
        Instructure.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "student not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end