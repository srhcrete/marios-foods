require 'rails_helper'

describe 'edit a product process' do
  it 'edits a product' do
    product = Product.create(:name => 'Hot Dog', :cost => 10, :country => 'United States')
    visit products_path
    click_link 'See all products'
    click_link product.name
    click_on 'Edit Product Details'
    fill_in 'product_cost', :with => 7
    click_on 'submit'
    expect(page).to have_content 'Product details have been updated.'
  end
end
