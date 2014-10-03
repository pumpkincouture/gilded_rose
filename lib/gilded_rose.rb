require_relative 'item'

class GildedRose

	attr_reader :items

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

  def update_quality
    @items.each do |item|
      unless item.name == "Sulfuras, Hand of Ragnaros"
        if item.name != "Aged Brie" && item.name != "Backstage passes to a TAFKAL80ETC concert"
          item.decrease_quality
        else
          item.increment_quality
          if item.name == "Backstage passes to a TAFKAL80ETC concert"
            if item.sell_in < 11
              item.increment_quality
            end
            if item.sell_in < 6
              item.increment_quality
            end
          end
        end

        item.update_sellin

        if item.sell_in < 0
          if item.name != "Aged Brie"
            if item.name != "Backstage passes to a TAFKAL80ETC concert"
              item.decrease_quality
            else
              item.quality = 0
            end
          else
            item.increment_quality
          end
        end
      end
    end
  end

end
