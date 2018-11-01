require_relative 'card'

class Deck
  attr_reader :cards
  
  def self.make_deck
    cards = []
    Card::SUITS.values.each do |suit|
      Card::VALUES.keys.each do |value|
        cards << Card.new(suit, value)
      end
    end
    cards
  end
  
  def initialize(cards = Deck.make_deck)
    @cards = cards
  end
  
  def shuffle_cards!
    @cards.shuffle!
  end

end
