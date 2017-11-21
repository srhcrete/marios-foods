class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @reviews = @product.reviews
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @reviews = @product.reviews
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Review successfully added!"
      redirect_to product_path(@product.id)
    else
      render :new
    end
  end

private
  def review_params
    params.require(:review).permit(:author, :content, :rating, :product_id)
  end
end
