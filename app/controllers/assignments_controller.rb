class AssignmentsController < ApplicationController

	load_and_authorize_resource param_method: :assignment_params

	def index
		# @assignments = Assignment.all
		@enrollment = current_user.enrollments.where(main: true).first
		if @enrollment != nil
			@cohort = Cohort.find(@enrollment.cohort_id)
			if @cohort != nil
				@assignments = @cohort.assignments.all
			end
		end
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