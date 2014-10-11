require_relative 'sulfuras_item'
require_relative 'concert_item'
require_relative 'brie_item'
require_relative 'standard_item'

class ItemFactory

	def create_item(name, sell_in, quality)
		case name
		when "Sulfuras, Hand of Ragnaros"
		  SulfurasItem.new(name, sell_in, quality)
		when "Aged Brie"
			BrieItem.new(name, sell_in, quality)
		when "Backstage passes to a TAFKAL80ETC concert"
			ConcertItem.new(name, sell_in, quality)
		else
			StandardItem.new(name, sell_in, quality)
		end
	end
end