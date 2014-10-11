require_relative 'sulfuras_item'
require_relative 'concert_item'
require_relative 'brie_item'
require_relative 'standard_item'

class ItemFactory

	def create_item(name, sellin, quality)
		case name
		when name == "Sulfuras, Hand of Ragnaros"
		  SulfurasItem.new(name, sellin, quality)
		when name == "Aged Brie"
			BrieItem.new(name, sellin, quality)
		when name == "Backstage passes to a TAFKAL80ETC concert"
			ConcertItem.new(name, sellin, quality)
		else
			StandardItem.new(name, sellin, quality)
		end
	end
end