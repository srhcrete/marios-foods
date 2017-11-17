class Review < ApplicationRecord
  belongs_to :product, counter_cache: true
  validates :author, :presence => true
  validates :content, :presence => true,
            :length => { :minimum => 50, :maximum => 250 }
  validates :rating, :presence => true
  validates :rating, inclusion: { in: 1..5 }
  validates :product_id, :presence => true
end
