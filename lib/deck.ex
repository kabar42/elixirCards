import Card

defmodule Deck do
  def std_deck() do
    for s <- get_suits(), r <- get_ranks(), do: %Card{rank: r, suit: s}
  end

  def deck_to_string([]), do: ""
  def deck_to_string([c | deck]) do
    "\n" <> card_to_string(c) <> deck_to_string(deck)
  end
end
