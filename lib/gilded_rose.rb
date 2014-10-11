require_relative 'item'

class GildedRose

	attr_reader :items, :standard_items

  @items = []

  def initialize
    @items = []
    @items << Item.new("+5 Dexterity Vest", 10, 20)
    @items << Item.new("Aged Brie", 2, 0)
    @items << Item.new("Elixir of the Mongoose", 5, 7)
    @items << Item.new("Sulfuras, Hand of Ragnaros", 0, 80)
    @items << Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20)
    @items << Item.new("Conjured Mana Cake", 3, 6)
  end

  def isolate_standard_items
    standard_items = []
    @items.each do |item|
      if item.name != "Aged Brie" && item.name != "Backstage passes to a TAFKAL80ETC concert" && item.name != "Sulfuras, Hand of Ragnaros"
        standard_items << item
      end
    end
    standard_items
  end

  def isolate_special_items
    special_items = []
    @items.each do |item|
      if item.name == "Aged Brie" && item.name == "Backstage passes to a TAFKAL80ETC concert" && item.name == "Sulfuras, Hand of Ragnaros"
        special_items << item
      end
    special_items
  end

  def update_quality(standard_items)
    standard_items.each do |item|
      item.decrease_quality
      item.update_sellin
    end
  end

  def update_special_items(special_items)
    case special_items.name
      when "Aged Brie"
        item.increase_quality
        item.update_sellin
      when "Backstage passes to a TAFKAL80ETC concert"
        item.increase_quality
        item.update_quality_by_two
        item.update_quality_by_three
        item.delete_quality
      when "Sulfuras, Hand of Ragnaros"
        item.maintain_quality_and_quantity
      end
  end
end
