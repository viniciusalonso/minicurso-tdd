class Item
  attr_reader :product, :quantity, :price_on_day

  def initialize params
    @product, @quantity, @price_on_day = params[:product], params[:quantity], params[:price_on_day]
  end

  def total_value
    @price_on_day * @quantity
  end
end
