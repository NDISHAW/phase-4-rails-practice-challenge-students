class StudentsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        student = student.all
        render json: student
    end
    def show
        student = student.find_by(params[:id])
        render json: student
    end
    def create
        student = find_student
        render json: student, status: :created
    end

    private

    def student_params
        params.permit(:name)
    end
    
    def find_student
        Student.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "student not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
