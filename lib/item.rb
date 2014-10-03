class Item

  attr_accessor :name, :sell_in, :quality

  def initialize (name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def increment_quality
    @quality += 1 if @quality < 50
  end

  def decrease_quality
    @quality -= 1 if @quality > 0
  end

  def update_sellin
    @sell_in -= 1
  end
end
