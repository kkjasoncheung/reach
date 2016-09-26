module ApplicationHelper


	def error_messages_for(user)

		render(:partial=>'application/error_messages', :locals=>{:user=>user})
		
	end
end
