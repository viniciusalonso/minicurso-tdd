class Product
  attr_reader :price, :name
  def initialize params
    @name, @price = params[:name], params[:price]
  end
end
