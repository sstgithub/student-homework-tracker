class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@cohort = current_user.cohorts.first
		@assignments = @cohort.assignments.all
	end

	def create
		@cohort = current_user.cohorts.build(cohort_params)
	end

	private

	def cohort_params
		params.require(:cohort).permit!
	end
end