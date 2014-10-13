require_relative 'item'

class BrieItem < Item 

	def update_quality
	  @quality += 1 if @quality < 50	
	end

	def update_sellin
		@sell_in -= 1
	end
end