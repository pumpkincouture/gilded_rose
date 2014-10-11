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

  def update_quality_by_two
    @quality += 2 if @sell_in <= 10
  end

  def update_quality_by_three
    @quality += 3 if @sell_in <= 5
  end

  def delete_quality
    @quality = 0 if @sell_in <= 0
  end

  def maintain_quality_and_quantity
    @quality
    @sell_in
  end
end
