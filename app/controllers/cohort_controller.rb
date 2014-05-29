class CohortController < ApplicationController
	def index
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
