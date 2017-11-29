require 'rails_helper'

describe 'add a new product process' do
  it 'adds a new product' do
    visit products_path
    click_link 'See all products'
    fill_in 'product_name', :with => 'Pizza'
    fill_in 'product_cost', :with => '10'
    fill_in 'product_country', :with => 'united states'
    click_on 'submit'
    expect(page).to have_content 'Product successfully added!'
  end

  it 'diplays errors when no input is entered' do
    visit products_path
    click_link 'See all products'
    click_on 'submit'
    expect(page).to have_content 'Please fix these errors:'
  end
end
