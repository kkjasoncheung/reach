module PublicHelper

	def check_if_user_is_in_club(user, target_club)
		check = false
		
		user.clubs.each do |club|
			if (club.clubname == target_club)
				check = true
				return check			
			end
		end

		return check

	end
end
