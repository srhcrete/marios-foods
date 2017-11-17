class AddReviewCountToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :reviews_count, :integer, default: 0
  end
end
