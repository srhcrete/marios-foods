class ProductsController < ApplicationController
  def index
    @featured = Product.featured.first
    @lastThree = Product.lastThree.limit(3)
  end
private
  def product_params
    params.require(:product).permit(:name)
  end
end
