require "./card"

class Deck
  attr_reader = :cards, :drawn, :hand

  def initialize
    @cards = []
    @hand = []
    @drawn = []

    Card::RANK.each do |rank|
      Card::SUIT.each do |suit|
        @cards << Card.new(rank,suit)
      end
    end
  end
  def draw
    card = @cards.pop
    @hand << card
    @drawn << card
    card
  end

  def shuffle
#  card = @hand.pop
#  @cards << card
# @cards.shuffle!

  @cards += @hand
  @hand = []
  @cards.shuffle!
end
  def recorded
    return @drawn
end
end
