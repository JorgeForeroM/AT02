class Item
  attr_accessor :item_name  #symbol
  attr_reader :quantity

  def initialize(quantity)

    @quantity = quantity
  end
 
#  def item_name
#    @item_name
#  end

	def message
		puts "You have #{@quantity} #{item_name}"
	end

end

item = Item.new(1)
puts item.item_name = "radio"

item.message