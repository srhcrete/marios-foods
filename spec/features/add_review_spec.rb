require 'rails_helper'

describe 'add a new review process' do
  it 'adds a new product review' do
    product = Product.create(:name => 'Hot Dog', :cost => 10, :country => 'United States')
    visit product_path(product)
    click_link 'Write a Review!'
    fill_in 'review_author', :with => 'Holden'
    fill_in 'review_rating', :with => '4'
    fill_in 'review_content', :with => 'This was a perfect, ball park frank. Comes with classic toppings. Bun coulda been better.'
    click_on 'submit'
    expect(page).to have_content 'Review successfully added!'
  end
end
