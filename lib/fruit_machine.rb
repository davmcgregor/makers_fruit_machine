class FruitMachine  
  SINGLE_PLAY_FEE = 5
  attr_reader :game_credits


  def initialize
    @slots = ["black",  "white" , "green" , "yellow"]
    @game_credits = 0
    @money = 0
  end

  def display
    @slots.sample(4).join(" | ")
  end

  def insert(amount)
    @money += amount
    @game_credits += amount / SINGLE_PLAY_FEE
  end
end
