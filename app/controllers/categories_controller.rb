class CategoriesController < ApplicationController
  before_action :set_shop

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params.merge(shop: @shop))
    if @category.save
      render json: @category
    else
      render :new
    end
  end

  def delete
  end

  def show
    @category = Category.find(params[:id])
    render json: @category
  end

  def update
  end

  def index
    @categories = Category.find(params[:shop_id])
    render json: @categories
  end

  private
  def set_shop
    @shop =  Shop.find params[:shop_id]
  end

  def category_params
    params.require(:category).permit(:name, :description)
  end
end
