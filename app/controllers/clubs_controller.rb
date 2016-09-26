class ClubsController < ApplicationController
  
  before_action :confirm_logged_in, :only=>[:index]
  before_action :confirm_admin, :only=>[:index]

  def index
    @clubs = Club.sorted
  end

  def new
    @club = Club.new
    @schools = School.all
  end

  def create
    @club = Club.new(clubs_params)
    @schools = School.all

    if @club.save 
      flash[:notice]='Club created.'
      redirect_to(clubs_path)
    else
      flash[:notice]='An error occured.'
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def show
    @club = Club.find(params[:id])
  end

  def delete
    @club = Club.find(params[:id])
  end

  def destroy
    club = Club.find(params[:id])

    if club.destroy
      flash[:notice]='Club deleted.'
      redirect_to(clubs_path)
    else
      flash[:notice]='Error deleting club.'
      render('delete')
    end
  end

  private

    def clubs_params
      params.require(:club).permit(:clubname, :description, :president, :phone, :email, :school_id, :display_picture)
    end
end
