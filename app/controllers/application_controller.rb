class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  	def confirm_admin
  		unless session[:user_id]==1 
  			flash[:notice]="You don't have access to this page." 
  			redirect_to(:controller=>'public',:action=>'concierge')
  			return false
  		end
  	end

  	def confirm_logged_in
  		unless session[:user_id]
  			flash[:notice]='Please log in.'
  			redirect_to(:controller=>'public', :action=>'index')
  			return false
  		end
  	end

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
