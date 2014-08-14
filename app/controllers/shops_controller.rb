class ShopsController < ApplicationController
  respond_to :html, :xml, :json, :js

  def index
  	@shop = Shop.all
    respond_with(@shop) do |format|
      format.js  { render :json => @shop, :callback => params[:callback] }
    end
  end

  def create
    @shop = Shop.new(shop_params)

    respond_to do |format|
      if @shop.save
        format.html { redirect_to @shop, notice: 'shop was successfully created.' }
        format.json { render :show, status: :created, location: @shop }
      else
        format.html { render :new }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @shop = Shop.new
  end

  def update
  end

  def show
  	@shop = Shop.find(params[:id])
    respond_with(@shop) do |format|
      format.js  { render :json => @shop, :callback => params[:callback] }
    end
  end

  def delete
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_params
      params.require(:shop).permit(:name, :location)
    end
  end
