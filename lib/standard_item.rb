require_relative 'item'

class StandardItem < Item 

  def update_quality
    @quality -= 1 if @quality > 0
  end

  def update_sellin
    @sell_in -= 1
  end 
end