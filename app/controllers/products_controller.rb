class ProductsController < ApplicationController
  def index
  	@products =Product.all
  	# render json:@products
  end
  def create
  @product = Product.create( product_params )
  redirect_to '/products'
end
def update
  @product = Product.update( product_params )
  redirect_to '/products'
end
private 
  def product_params
   params.require(:product).permit(:name, :description)
  end
end
