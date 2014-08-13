class ShopController < ApplicationController
  def index
  	@shops = Shop.all
  	render json: @shops
  end

  def create

  end

  def update
  end

  def show
  	@shop = Show.find(params[:id])
  	render json: @shop
  end

  def delete
  end
end
