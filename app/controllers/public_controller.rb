class PublicController < ApplicationController
 	
  def index
  	if session[:user_id]
  		redirect_to(:action=>'concierge')
  	end
  end

  def attempt_login

  	if params[:email].present? && params[:password].present?
  		found_user = User.where(:email=>params[:email]).first
  		
  		if found_user	
  			authorized_user = found_user.authenticate(params[:password])
  			if authorized_user
	  			session[:username] = authorized_user.username
		  		session[:user_id] = authorized_user.id
		  		redirect_to(:action=>'concierge')
		  		flash[:notice]="Welcome back " + session[:username] 
	 		end
  		end
 	else 
 		flash[:notice]='Invalid password/username combination'
 		render("index")
 	end
  end

  def concierge

  end

  def logout
  	if session[:username] 
  		session[:username]=nil
  		session[:user_id]=nil
  		redirect_to(:action=>'index')
  	end
  end


  def account
  	if session[:user_id]

  		@user=User.find(session[:user_id])

  	else 
  		redirect_to(:action=>'index')
  	end
  end

  def club_page
  	@club = Club.find(params[:id])
  	@user = User.find(session[:user_id])
  end

  def join_club
  	@user=User.find(session[:user_id])
  	@club = Club.find(params[:club_id])
  	if !check_if_user_is_in_club(@user,@club.clubname)
	  	@user.clubs << @club
	  	flash[:notice]='Welcome to ' + @club.clubname + '!'
	  	render('club_page')
	else
	  	flash[:notice]='You are already in this club.'
	 end
  end

  def leave_club
  	
  	# removes the user from the club, but doesn't destroy
  	# tge user (removes only the association)

  	@user = User.find(session[:user_id])
  	@club = Club.find(params[:club_id])
  	
  	if @club
  		@user.clubs.delete(@club)
  	end
  	render('club_page')
  end


end
