class ProductsController < ApplicationController
  def index
    @featured = Product.featured.first
    @lastThree = Product.lastThree.limit(3)
  end

  def new
    @products = Product.all
    @newProduct = Product.new
  end

  def create
    @products = Product.all
    @product = Product.new(product_params)
  end

  def show
    @product = Product.find(params[:id])
  end

private
  def product_params
    params.require(:product).permit(:name)
  end
end
