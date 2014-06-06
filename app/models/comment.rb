class Comment < ActiveRecord::Base
	attr_reader :content, :user_id
	belongs_to :commentable, polymorphic: true
	belongs_to :user
end
