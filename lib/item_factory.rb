require_relative 'sulfuras_item'
require_relative 'concert_item'
require_relative 'brie_item'
require_relative 'standard_item'
require_relative 'conjured_item'

class ItemFactory

	def create_item(name, sell_in, quality)
	  case 
		when name == "Sulfuras, Hand of Ragnaros"
		  SulfurasItem.new(name, sell_in, quality)
		when name == "Aged Brie"
			BrieItem.new(name, sell_in, quality)
		when name == "Backstage passes to a TAFKAL80ETC concert"
			ConcertItem.new(name, sell_in, quality)
		when name.downcase.match("conjured") 
			ConjuredItem.new(name, sell_in, quality)
		else
			StandardItem.new(name, sell_in, quality)
		end
	end
end