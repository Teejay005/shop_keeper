class ShopController < ApplicationController
  def index
  	@shops = Shop.all
  	render json: @shops.to_json
  end

  def create

  end

  def update
  end

  def show
  	@shop = Show.find(params[:id])
  	render json: @shop.to_json
  end

  def delete
  end
end
