class ShopperController < ApplicationController
	include CurrentCart
	skip_before_action :authorize 
	before_action :set_cart

  def index
  	if params[:search]
  		query = "%"+params[:search]+"%"
  		@products = Product.where("name like ? OR price like ? OR description like ?", query, query, query).order(:name, :description, :price)
  	else
  		@products = Product.order(:name)
		end
  end
end
