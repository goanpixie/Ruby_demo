class ProductsController < ApplicationController
  def index
  	@products =Product.all
  	render json:@products
  end
  def create
  @product = Product.create( name: params[:name], description: params[:description])
  puts "jkbhjbhgvhgvghvg", @product, "lknsjkdbjhwbd"
  # render :text =>@product.inspect
  redirect_to '/products/index'
end
end
