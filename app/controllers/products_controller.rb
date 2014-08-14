class ProductsController < ApplicationController
  before_action :set_shop, :set_category
  respond_to :html, :xml, :json, :js

  def new
      @product = Product.new
  end

  def create
    @product = Product.new(product_params.merge(category: @category))
    if @product.save
      render json: @product.to_json
    else
      render :new
    end
  end

  def delete
  end

  def show
    @product = Product.find(params[:id])
    respond_with(@product) do |format|
      format.js  { render :json => @product, :callback => params[:callback] }
    end
  end

  def update
  end

  def index
    @products = Product.find(params[:category_id])

    respond_with(@products) do |format|
      format.js  { render :json => @products, :callback => params[:callback] }
    end
  end

  private
    def set_shop
      @shop =  Shop.find params[:shop_id]
    end

    def set_category
      @category =  Category.find params[:category_id]
    end

    def product_params
      params.require(:product).permit(:name, :price, :tax_rate)
    end
end
