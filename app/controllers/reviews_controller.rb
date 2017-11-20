class ReviewsController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    @reviews = @product.reviews
  end

private
  def product_params
    params.require(:review).permit(:author, :content, :rating)
  end
end
