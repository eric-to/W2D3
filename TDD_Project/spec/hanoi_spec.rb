require "hanoi"

RSpec.describe "Towers of Hanoi" do
  let(:game) { Hanoi.new }
  let(:win_state1) { [[], [3, 2, 1], []] } 
  let(:win_state2) { [[], [], [3, 2, 1]] } 
  
  describe "#initialize" do
    it "sets the default towers" do
      expect(game.towers).to eq([[3, 2, 1], [], []])
    end
  end
  
  describe "#won?" do
    it "returns true if all discs have changed towers" do
      expect(game.towers == win_state1 || game.tower == win_state2 ).to be_truthy
    end
  end
end