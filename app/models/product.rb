class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :cost, :presence => true,
            :format => { :with => /\A(\$)?(\d+)(\.|,)?\d{0,2}?\z/ }
  validates :country, :presence => true

  scope :featured, -> {
    order('reviews_count DESC')
  }

  scope :lastThree, -> {
    order('created_at DESC')
  }
end
