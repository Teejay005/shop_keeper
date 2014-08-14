class CategoriesController < ApplicationController
  before_action :set_shop
  respond_to :html, :xml, :json, :js

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
    respond_with(@category) do |format|
      format.js  { render :json => @category, :callback => params[:callback] }
    end
  end

  def update
  end

  def index
    @categories = Category.find(params[:shop_id])
    respond_with(@categories) do |format|
      format.js  { render :json => @categories, :callback => params[:callback] }
    end
  end

  private
  def set_shop
    @shop =  Shop.find params[:shop_id]
  end

  def category_params
    params.require(:category).permit(:name, :description)
  end
end
