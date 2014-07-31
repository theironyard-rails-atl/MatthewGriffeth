@@library = ["one" , "two", "three", "four", "five"]

class Hangman

  def initialize
  end
  @tries_left = 8
  @victory = false

  def guess(letter)
    @tries_left -= 1
  end
