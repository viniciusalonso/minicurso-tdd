require 'spec_helper'
require_relative '../app/cart'

describe Cart do
  subject(:cart) { described_class.new 'Juca' }

  describe "#add_item" do
    it 'contain 1 new item' do
      product  =  instance_double('Product', name: 'Notebook', price: 3000)
      item     =  instance_double('Item', product: product, quantity: 1)

      expect do
        cart.add_item(item)
      end.to change{ cart.items.length }.from(0).to(1)
    end
  end

  describe "#remove_item" do
    it 'remove an item' do
      product  =  instance_double('Product', name: 'Notebook', price: 3000)
      item     =  instance_double('Item', product: product, quantity: 1)
      cart.add_item(item)

      expect do
        cart.remove_item(item)
      end.to change { cart.items.length }.from(1).to(0)
    end
  end

  describe "#total_value" do
    context 'with 2 items' do
      it 'the sum should be 3500' do
        laptop       =  instance_double('Product', name: 'Notebook', price: 3000)
        item_laptop  =  instance_double('Item', product: laptop, quantity: 1)

        book       =  instance_double('Product', name: 'Livro', price: 50)
        item_book  =  instance_double('Item', product: book, quantity: 10)

        allow(item_laptop).to receive(:total_value).and_return(3000)
        allow(item_book).to receive(:total_value).and_return(500)


        cart.add_item(item_laptop)
        cart.add_item(item_book)

        expect(cart.total_value).to eq(3500)
      end
    end
  end
end
