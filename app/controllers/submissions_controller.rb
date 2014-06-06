class SubmissionsController < ApplicationController

	load_and_authorize_resource param_method: :submission_params

	def index
	end

	def new
		@submission = Submission.new
	end

	def show
		@submission = Submission.find(params[:id])
	end

	def edit
		@submission = Submission.find(params[:id])
	end

	def update
		@submission = Submission.find(params[:id])
		@submission.update_attributes(submission_params)
		redirect_to '/assignments'
	end

	def create
		@submission = Submission.new(submission_params)
		@submission.save
		redirect_to '/assignments'
	end

	private

	def submission_params
		params.require(:submission).permit!
	end
end
