require 'spec_helper'
require_relative '../app/item'
require_relative '../app/product'

describe Item do
  let(:product) { instance_double('Product',  name: 'Livro', price: 10.50) }
  let(:item_params) { { product: product, quantity: 3, price_on_day: product.price } }
  subject(:item) { described_class.new item_params }

  context 'should return his' do
    it '#product' do
      expect(item.product).to be product
    end

    it '#quantity' do
      expect(item.quantity).to eq(3)
    end

    it '#price_on_day' do
      expect(item.price_on_day).to eq(10.50)
    end
  end

  describe "#total_value" do
    it 'item value is 31.50' do
      allow(product).to receive(:price).and_return(10.50)
      expect(item.total_value).to eq(31.50)
    end

    context 'product price has changed' do
      it 'after item be created' do
        product = Product.new({ name: 'Livro', price: 10.50 })
        item    = described_class.new({product: product, quantity: 3, price_on_day: product.price})

        product.price = 15

        expect(item.total_value).to eq(31.50)
      end
    end
  end
end
