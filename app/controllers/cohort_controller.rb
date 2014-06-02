class CohortController < ApplicationController
	def index
		@enrollment = Enrollment.new
	end

	def update
		@cohort = Cohort.find(params[:id])
		@cohort.update(cohort_params)
	end

	private

	def cohort_params
		params.require(:cohort).permit!
	end

end
