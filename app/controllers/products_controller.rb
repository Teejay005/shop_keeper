class ProductsController < ApplicationController
  before_action :set_shop, :set_category

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
    render json: @product.to_json
  end

  def update
  end

  def index
    @products = Product.find(params[:category_id])
    render json: @products.to_json
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
