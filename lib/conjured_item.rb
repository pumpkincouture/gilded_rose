require_relative 'item'

class ConjuredItem < Item 

  def update_quality
    @quality -= 2 if @quality > 0
  end

  def update_sellin
    @sell_in -= 1
  end 
end