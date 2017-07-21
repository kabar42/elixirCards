defmodule Card do
  @enforce_keys [:rank, :suit]
  defstruct [:rank, :suit]

  @ranks [:Ace, :Two, :Three, :Four, :Five, :Six, :Seven, :Eight,
    :Nine, :Ten, :Jack, :Queen, :King]
  @suits [:Hearts, :Clubs, :Diamonds, :Spades]

  @rank_strings %{
    Ace: "Ace",
    Two: "Two",
    Three: "Three",
    Four: "Four",
    Five: "Five",
    Six: "Six",
    Seven: "Seven",
    Eight: "Eight",
    Nine: "Nine",
    Ten: "Ten",
    Jack: "Jack",
    Queen: "Queen",
    King: "King",
  }
  @suit_strings %{
    Hearts: "Hearts",
    Clubs: "Clubs",
    Diamonds: "Diamonds",
    Spades: "Spades",
  }

  def get_ranks() do
    @ranks
  end

  def get_suits() do
    @suits
  end

  def card_to_string(card) do
    "[#{@rank_strings[card.rank]} of #{@suit_strings[card.suit]}]"
  end
end
