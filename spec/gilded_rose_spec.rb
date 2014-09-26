require_relative 'spec_helper'

describe GildedRose do

  describe "#update_quality" do

    before :each do
      @rose = GildedRose.new
      @items = @rose.items
    end

    it "updates sell in  after one day" do
      @rose.update_quality
      @items.zip([9, 1, 4, 0, 14, 2]).each do |item, sell_in|
        expect(item.sell_in).to eq(sell_in), "Expected sell in of #{sell_in} for #{item.name}, but got #{item.sell_in}"
      end
    end

    it "updates quality after one day" do
      @rose.update_quality
      @items.zip([19, 1, 6, 80, 21, 5]).each do |item, quality|
        expect(item.quality).to eq(quality)
      end
    end

    it "updates sell in after 5 days" do
      5.times { @rose.update_quality }
      @items.zip([5, -3, 0, 0, 10, -2]).each do |item, sell_in|
        expect(item.sell_in).to eq(sell_in), "Expected sell in of #{sell_in} for #{item.name}, but got #{item.sell_in}"

      end
    end
    it "updates quality after 5 days" do
      5.times { @rose.update_quality}
      assert_quality_updates([15, 8, 2, 80, 25, 0])
    end
  end
end

def assert_quality_updates(quality_values)
  @items.zip(quality_values).each do |item, quality|
       expect(item.quality).to eq(quality), "Expected quality of #{quality} for #{item.name}, but got #{item.quality}"
  end
end

def get_sell_ins
  vals = []
  @items.each do |item|
    vals << item.sell_in
  end
  p  vals
end

def get_quality
  quality_val = []
  @items.each do |item|
    quality_val << item.quality
  end
  p quality_val
end
