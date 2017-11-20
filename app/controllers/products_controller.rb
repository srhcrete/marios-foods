class ProductsController < ApplicationController
  def index
    @featured = Product.featured.first
    @lastThree = Product.lastThree.limit(3)
  end

  def new
    @products = Product.all
    @product = Product.new
  end

  def create
    @products = Product.all
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path
    else
      flash[:notice] = "Your product was not added."
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product details have been udpated."
      redirect_to products_path
    else
      render :edit
    end
  end

private
  def product_params
    params.require(:product).permit(:name, :cost, :country)
  end
end
