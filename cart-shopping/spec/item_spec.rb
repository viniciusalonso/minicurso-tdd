require 'spec_helper'
require_relative '../app/item'
require_relative '../app/product'

describe Item do
  let(:product_params) { { name: 'Livro', price: 10.50 } }
  subject(:product) { Product.new product_params }

  let(:item_params) { { product: product, quantity: 3 } }
  subject(:item) { described_class.new item_params }

  context 'should return his' do
    it '#product' do
      expect(item.product).to be product
    end

    it '#quantity' do
      expect(item.quantity).to eq(3)
    end
  end
end
