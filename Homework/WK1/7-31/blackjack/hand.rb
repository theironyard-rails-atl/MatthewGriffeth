class Hand
  attr_accessor :hand

  def initialize
    @hand = []
  end

  def add(*new_cards)
    @hand += new_cards
    get_value
  end

  def to_s
    @hand.map { |card| card.to_s}.join(', ')
  end

  def get_value
    hand_value = 0
    aces = 0
    @hand.each do |card|
      hand_value += card.get_value
      aces +=1 if card.rank == :A

      while hand_value > 21 && aces > 0
        hand_value -= 10
        aces -= 1
      end
    end
    hand_value
  end


  def busted?
    #get_value = calling a method on self (self not req'd)
    get_value > 21
  end

  def blackjack?
    @hand.count == 2 && self.get_value == 21
  end
end
