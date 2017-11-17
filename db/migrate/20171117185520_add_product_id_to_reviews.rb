class AddProductIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column(:reviews, :product_id, :integer)
  end
end
