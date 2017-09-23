require 'spec_helper'
require_relative '../app/item'
require_relative '../app/product'

describe Item do
  let(:product) { instance_double('Product', name: 'Livro', price: 10.50) }
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

  describe "#total_value" do
    it 'item value is 31.50' do
      allow(product).to receive(:price).and_return(10.50)
      expect(item.total_value).to eq(31.50)
    end
  end
end
