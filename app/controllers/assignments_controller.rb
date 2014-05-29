class AssignmentsController < ApplicationController
	load_and_authorize_resource param_method: :assignment_params

	def index
		@assignments = Assignment.all
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
		@assignment = current_user.assignments.build(assignment_params)
		@assignment.save
	end

	def new
	end

	private

	def assignment_params
		params.require(:assignment).permit!
	end
end