class CategoriesController < ApplicationController
  
  before_action :confirm_logged_in
  before_action :confirm_admin

  def index
    @categories = Category.alphabetical
  end

  def edit
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
  end

  def delete
  end

  private 

    def category_params
      params.require(:category).permit(:name)
    end
end
