module ApplicationHelper
	def submission_status(submission, a)
		if submission != nil
			link_to "#{@submission.status} on #{@submission.updated_at.strftime("%a (%b %d)")} at #{@submission.updated_at.strftime("%l:%M %p")}", submission
		else
			link_to assignment_path(a)
		end
	end

end
