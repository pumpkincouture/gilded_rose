require_relative 'spec_helper'

describe GildedRose do

  describe "#update_quality" do

    def assert_quality_updates(quality_values)
      @items.zip(quality_values).each do |item, quality|
        expect(item.quality).to eq(quality), "Expected quality of #{quality} for #{item.name}, but got #{item.quality}"
       end
     end

    def assert_sellin_updates(sellin_values)
      @items.zip(sellin_values).each do |item, sell_in|
        expect(item.sell_in).to eq(sell_in), "Expected sell in of #{sell_in} for #{item.name}, but got #{item.sell_in}"
      end
    end

    def call_update_quality(n)
      n.times { @rose.update_quality }
    end

    def get_sell_ins
      vals = []
      @items.each do |item|
        vals << item.sell_in
      end
      p vals
    end

    def get_quality
      quality_val = []
      @items.each do |item|
        quality_val << item.quality
      end
      p quality_val
    end

    before :each do
      @rose = GildedRose.new
      @items = @rose.items
      @item_factory = ItemFactory.new
    end

    it "updates sell in  after one day" do
      call_update_quality(1)
      assert_sellin_updates([9, 1, 4, 0, 14, 2])
    end

    it "updates quality after one day" do
      call_update_quality(1)
      assert_quality_updates([19, 1, 6, 80, 21, 5])
    end

    it "updates sell in after 4 days" do
      call_update_quality(4)
      assert_sellin_updates([6, -2, 1, 0, 11, -1])
    end

    it "updates quality after 4 days" do
      call_update_quality(4)
      assert_quality_updates([16, 4, 3, 80, 24, 2])
    end


    it "updates sell in after 5 days" do
      call_update_quality(5)
      assert_sellin_updates([5, -3, 0, 0, 10, -2])
    end

    it "updates quality after 5 days" do
      call_update_quality(5)
      assert_quality_updates([15, 5, 2, 80, 26, 1])
    end

    it "updates sell in after 9 days" do
      call_update_quality(9)
      assert_sellin_updates([1, -7, -4, 0, 6, -6])
    end

    it "updates quality after 9 days" do
      call_update_quality(9)
      assert_quality_updates([11, 9, 0, 80, 34, 0])
    end


    it "updates sell in after 10 days" do
      call_update_quality(10)
      assert_sellin_updates([0, -8, -5, 0, 5, -7])
    end

    it "updates quality after 10 days" do
      call_update_quality(10)
      assert_quality_updates([10, 10, 0, 80, 37, 0])
    end

    it "updates sell in after 15 days" do
      call_update_quality(15)
      assert_sellin_updates([-5, -13, -10, 0, 0, -12])
    end

    it "updates quality after 15 days" do
      call_update_quality(15)
      get_quality
      assert_quality_updates([5, 15, 0, 80, 0, 0])
    end

    xit "updates sell in after 20 days" do
      call_update_quality(20)
      assert_sellin_updates([-10, -18, -15, 0, -5, -17])
    end

    xit "updates quality after 20 days" do
      call_update_quality(20)
      assert_quality_updates([0, 38, 0, 80, 0, 0])
    end
  end
end
