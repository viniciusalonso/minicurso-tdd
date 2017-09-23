require 'spec_helper'
require_relative '../app/product'

describe Product do
  let(:params) {  {name: 'Playstation 4', price: 1.499}  }
  subject(:product) { described_class.new(params) }

  context 'should return his' do
    it '#price' do
      expect(product.price).to eq(1.499)
    end

    it '#name' do
      expect(product.name).to eq('Playstation 4')
    end
  end
end
