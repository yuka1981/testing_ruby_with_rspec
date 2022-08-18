class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # 使用 helper method 所建立的 instance 在 example 中是各自獨立的
  def card
    Card.new("Ace", "Spades")
  end

  it "has a rank" do
    expect(card.rank).to eq("Ace")
  end

  it "has a suit" do
    expect(card.suit).to eq("Spades")
  end
end
