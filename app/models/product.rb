class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true

  scope :featured, -> {
    order('reviews_count DESC')
  }

  scope :lastThree, -> {
    order('created_at DESC')
  }
end
