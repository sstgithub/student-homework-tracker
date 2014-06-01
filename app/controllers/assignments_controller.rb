class AssignmentsController < ApplicationController
	load_and_authorize_resource param_method: :assignment_params

	def index
		## @assignments = Assignment.
		# current_user.iyaclasses.each do |f|
		# 	f.cohort_id
		# end
		# @cohort = current_user.cohorts.first Cohort.find(current_user.iyaclasses.cohort_id).name
		# @assignments = @cohort.assignments.all 
	end

	def show
		@assignment = Assignment.find(params[:id])
	end

	def edit
		@assignment = Assignment.find(params[:id])
	end

	def update
	end

	def create
		@cohort = current_user.cohorts.first
		@assignment = @cohort.assignments.build(assignment_params)
		@assignment.save
		redirect_to root_path
	end

	def new
	end

	private

	def assignment_params
		params.require(:assignment).permit!
	end
end