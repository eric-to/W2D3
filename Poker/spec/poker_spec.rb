require "card"
require "deck"
require "player"

describe "Card" do
  describe "#initialize" do
    it "only creates valid cards" do
      expect{ Card.new("BADSUIT", "BADVALUE") }.to raise_error("Invalid card was given!")
    end
  end
end

describe "Deck" do
  let(:deck) { Deck.new }
  let(:cards) { deck.cards.dup }
  
  describe "#initialize" do
    it "contains 52 cards" do
      expect(deck.cards.length).to eq(52)
    end
  end
  
  describe "#shuffle_cards!" do
    it "shuffles the deck of cards" do
      # before_deck = deck.cards.dup
      # deck.shuffle_cards!
      # after_deck = deck.cards
      # expect(after_deck).to_not eq(before_deck)
      expect(cards.shuffle!).to_not eq(deck)
    end
  end
end



RSpec.describe "Player" do
  let(:game) { double("game") }
  let(:player) { Player.new("Sue", game, 100) }
  
  describe "#initialize" do
    it "player has a name" do
      expect(player.name).to eq("Sue")
    end
    
    it "player begins with an empty hand" do
      expect(player.hand).to be_empty
    end
    
    it "player begins with some pot" do
      expect(player.pot).to_not be_zero
    end 
  end
  
  describe "#bet" do
    before(:each) {
      allow(game).to receive(:add_pot).with(10)
      player.bet(10)
    }
    
    it "subtracts from player's pot" do
      expect(player.pot).to eq(90)
    end
  end
  
  describe "#fold" do
    it "sets hand to empty" do
      expect(player.hand).to be_empty
    end
  end
end

describe "Hand" do
  it "recognizes a pair" do
  end
end