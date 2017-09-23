class Cart
  attr_reader :items

  def initialize owner
    @owner = owner
    @items = []
  end

  def add_item item
    @items << item
  end

  def remove_item item
    @items.delete(item)
  end

  def total_value
    @items.map(&:total_value)
          .reduce(:+)
  end
end
