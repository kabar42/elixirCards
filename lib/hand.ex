defmodule Hand do
  def generateHands([], [], handList), do: handList

  def generateHands([], hand, handList) do
    cond do
      length(hand) >= 5 ->
        [hand | handList]
      true -> 
        handList
    end
  end

  def generateHands([c | deck], [], handList) do
    generateHands(deck, [c], handList) ++ generateHands(deck, [], handList)
  end

  def generateHands([c | deck], hand, handList) do
    cond do
      length(hand) >= 5 ->
        [hand | handList]
      true ->
        generateHands(deck, [c | hand], handList) ++ generateHands(deck, hand, handList)
    end
  end
end
