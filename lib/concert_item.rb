require_relative 'item'

class ConcertItem < Item

	def update_quality
		if @sell_in <= 10
			@quality += 2
		elsif @sell_in <= 5
			@quality += 3
		elsif @sellin <= 0
			@quality = 0
		end
	end

	def update_sellin
		@sell_in -= 1
	end
end