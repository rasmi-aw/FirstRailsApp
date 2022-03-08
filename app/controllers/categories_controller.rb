class CategoriesController < ApplicationController
  def index
    #getting all categories
    @categories = Category.find_each
  end

  def show
    @category = Category.find(params[:id])
  end

  def update
    new_category = request_params
    @category = Category.find(params[:id])
    @category.update(new_category)
    redirect_to category_path(params[:id])
  end

  def destroy
    Category.find(params[:id]).destroy
    redirect_to categories_path
  end

  def create
    Category.create(request_params)
    redirect_to categories_path
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  #used to get a category from params and remove the rails error
  def request_params
    puts params
    return params.require(:category).permit(:name, :slug)
  end
end
