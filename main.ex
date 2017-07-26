theDeck = Deck.std_deck()
handList = []
outList = Hand.generateHands!(theDeck, [], handList)
IO.puts "Hand count: #{length(outList)}"

# IO.puts Deck.deck_to_string(theDeck)
