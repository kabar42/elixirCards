defmodule Elixircards do
  def main(args) do
    theDeck = Deck.std_deck()
    handList = []
    outList = Hand.generateHands(theDeck, [], handList)
    IO.puts "Hand count: #{length(outList)}"
  end
end
