require 'towers_of_hanoi'
require 'rspec'

describe 'Towers of Hanoi' do
  subject(:toh) { TowersOfHanoi.new }

  describe '#initialize' do
    it "sets towers to a nested array" do
      expect(toh.towers).to eq([[],[],[]])
    end
  end

  describe "#populate" do
    it "fills first nested array with numbers" do
      expect(toh.populate).to eq([[1, 2, 3], [], []])
    end
  end

  describe "#valid_move?" do
    before(:each) do
      toh.populate
    end

    it "raises an error if no disc is at the start position" do
      expect { toh.valid_move?(1, 0) }.to raise_error("not a valid move!")
    end
  end

  describe "#move" do
    before(:each) do
      toh.populate
    end

    it "moves disc from start position to end position" do
      expect(toh.move(0, 1)).to eq([[2, 3], [1], []])
    end
  end

  describe "#won?" do
    before(:each) do
      toh.populate
    end

    it "determines if the player has won" do
      expect(toh.won?).to eq(true)
    end
  end
end
