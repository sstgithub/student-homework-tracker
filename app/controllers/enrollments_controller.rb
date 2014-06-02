class EnrollmentsController < ApplicationController
	load_and_authorize_resource param_method: :enrollment_params

	def index
		@enrollments = Enrollment.all
		@enrollment = Enrollment.new
	end

	def create
		@enrollment = current_user.enrollments.build(enrollment_params)
		@enrollment.save
	end

	def edit
	end

	def show
	end

	def update
	end

	private

	def enrollment_params
		params.require(:enrollment).permit!
	end
end
