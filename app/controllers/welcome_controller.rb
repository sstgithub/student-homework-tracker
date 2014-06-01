class WelcomeController < ApplicationController

	def index
	end

	def location
		@enrollment 
		@enrollment = current_user.enrollments.build(enrollment_params)
		if @enrollment.save
			redirect_to cohort_welcome_path
		end
	end

	def cohort
		@enrollment = current_user.enrollments.last
		@enrollment.update_attributes(enrollment_params)
		if @enrollment.save
			redirect_to root_path
		end
	end

	private

	def enrollment_params
		params.require(:enrollment).permit!
	end
end