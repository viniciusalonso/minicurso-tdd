class Item
  attr_reader :product, :quantity

  def initialize params
    @product, @quantity = params[:product], params[:quantity]
  end
end
