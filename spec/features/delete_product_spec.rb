require 'rails_helper'

describe 'delete a product process' do
  it 'deletes a product' do
    product = Product.create(:name => 'Cheeseburger', :cost => '10', :country => 'United States')
    visit product_path(product)
    delete_link = find_link 'Delete this Product', href: product_path(product)
    expect(delete_link['data-confirm']).to eq 'You sure?'
  end
end
