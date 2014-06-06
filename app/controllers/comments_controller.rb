class CommentsController < ApplicationController
	def index
	end

	def create
		@new_comment = Comment.where(comment_params).first_or_create
		@new_comment.save
		redirect_to :back
	end

	private

	def comment_params
		params.require(:comment).permit!
	end

end