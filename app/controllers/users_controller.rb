class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
	end

	def create
		@cohort = current_user.cohorts.build(params[:cohort_params])
	end

	private

	def cohort_params
		params.require(:cohort).permit!
	end
end