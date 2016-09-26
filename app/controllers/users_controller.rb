class UsersController < ApplicationController
  
  before_action :confirm_logged_in, :except=>[:new, :create]
  before_action :confirm_admin, :except=>[:new,:create]
  
  def index
    @users = User.sorted
  end

  def show
    @user = User.find(params[:id])
    @schools = School.all
  end

  def edit
    @user = User.find(params[:id])
    @schools = School.all
  end

  def update
    @user = User.find(params[:id])
    @schools = School.all
    if @user.update_attributes(user_params)
      flash[:notice]='Successfully updated.'
      redirect_to(:action=>'index')
    else
      flash[:notice]='There was an error updating this record.'
      render('edit')
    end
  end

  def new
    @user = User.new
    @schools = School.all
  end

  def create
    @user = User.new(user_params)
    @schools = School.all
    if @user.save 
      flash[:notice]='Welcome ' + @user.username
      session[:username]=@user.username
      session[:user_id]=@user.id
      redirect_to(:controller=>'public',:action=>'concierge')
    else
      flash[:notice]='Error creating new user.'
      render('new')
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      flash[:notice]='User has been deleted.'
      redirect_to(:action=>'index')
    else
      flash[:notice]='Error deleting user'
      render('delete')
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :email, :password, :year_of_study, :school_id, :gender, :first_name, :last_name, :student_number)
    end

end