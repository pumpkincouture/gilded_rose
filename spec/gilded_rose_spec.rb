require_relative 'spec_helper'

describe GildedRose do

  describe "#update_quality" do

    before :each do
      @rose = GildedRose.new
      @items = @rose.items
    end

    it "updates items after one day" do
      expect(1).to eq(2)
    end

  end

end
