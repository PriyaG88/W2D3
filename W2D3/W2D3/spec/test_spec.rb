require "test"
require "rspec"

describe "Array" do
  describe "#remove_dups" do
    it "returns an unique array" do
      arr = [1, 2, 1, 3, 3]
      expect(arr.remove_dups).to eq([1,2,3])
    end
  end

  describe "#two_sum" do
    it "returns a pair that sums to zero" do
      arr = [-1, 0, 2, -2, 1]
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "my_transpose" do
    it "convert between row and column representations" do
      expect(my_transpose([
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
        ])).to eq(
        [[0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]])
      end
    end
end
