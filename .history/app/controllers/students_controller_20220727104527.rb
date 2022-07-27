class StudentsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        student = Student.all
        render json: student
    end
    def show
        student = Student.find_by(params[:id])
        render json: student, include: :students
    end
    def create
        student = Student.create!(st)
        render json: student, status: :created
    end

    private

    def student_params
        params.permit(:name, :major,:age)
    end
    
    def find_student
        Student.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Student not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
