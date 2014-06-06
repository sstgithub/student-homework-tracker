class EnrollmentsController < ApplicationController
	load_and_authorize_resource param_method: :enrollment_params

	def index
		@enrollments = Enrollment.all
		@enrollment = Enrollment.new
	end

	def create
		@enrollment = current_user.enrollments.build(enrollment_params)
		if @enrollment.save
			redirect_to root_path
		else
			redirect_to :back
		end
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
