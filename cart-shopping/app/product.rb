class Product
  attr_reader :price, :name
  attr_writer :price
  def initialize params
    @name, @price = params[:name], params[:price]
  end
end
