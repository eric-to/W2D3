class Player
  attr_accessor :hand, :pot
  attr_reader :game, :name
  
  def initialize(name, game, pot)
    @name = name
    @game = game
    @pot = pot
    @hand = []
  end
  
  def bet(chips)
    @pot -= chips
    @game.add_pot(chips)
  end
  
  def prompt_user
    puts "Do you want to discard, fold, see, or raise?"
    input = gets.chomp
    discard if input == "discard"
    fold if input == "fold"
    see if input == "see"
    raise if input == "raise"
  end
  
  def discard
  end
  
  def fold
    @hand = []
  end
end
