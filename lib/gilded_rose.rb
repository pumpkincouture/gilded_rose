require_relative 'item_factory'

class GildedRose

	attr_reader :items

  @items = []

  def initialize
    @item_factory = ItemFactory.new
    @items = []
    @items << @item_factory.create_item("+5 Dexterity Vest", 10, 20)
    @items << @item_factory.create_item("Aged Brie", 2, 0)
    @items << @item_factory.create_item("Elixir of the Mongoose", 5, 7)
    @items << @item_factory.create_item("Sulfuras, Hand of Ragnaros", 0, 80)
    @items << @item_factory.create_item("Backstage passes to a TAFKAL80ETC concert", 15, 20)
    @items << @item_factory.create_item("Conjured Mana Cake", 3, 6)
  end

  def update_quality
    @items.each do |item|
      item.update_sellin
      item.update_quality
    end
  end
end
