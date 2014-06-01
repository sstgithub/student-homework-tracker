class EnrollmentController < ApplicationController
	def index
	end

	def location
		@enrollment = current_user.enrollments.build(enrollment_params)
		if @enrollment.save
			redirect_to root_path
		end
	end

	private

	def enrollment_params
		params.require(:enrollment).permit!
	end
end