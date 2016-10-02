class CategoriesController < ApplicationController
  
  before_action :confirm_logged_in, :except=>[:show]
  before_action :confirm_admin, :except=>[:show]

  def index
    @categories = Category.alphabetical
  end

  def edit
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save 
      flash[:notice]="New category created"
      redirect_to(categories_path)

    else
      flash[:notice]="Something went wrong."
      render("new")
    end
  end

  def delete
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to(categories_path)
    else
      flash[:notice]="Something went wrong. Could not delete category."
      render('delete')
    end
  end
  private 

    def category_params
      params.require(:category).permit(:name)
    end
end
