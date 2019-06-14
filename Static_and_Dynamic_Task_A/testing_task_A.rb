### Testing task A code:

# Carry out Static testing on the code below.
# Correct the errors below that you spotted in task 1.

class CardGame
    #missing attr_reader
  def initialize(suit, value)
    @suit = suit
    @value = value;
  end

  def checkforAce(card)
    if card.value = 1 #required double equals and missing parentheses
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # lack of comma, def wrong spelling 
  if card1.value > card2.value #missing parentheses
    return card.name # no need for .name
  else
    card2 # no return
  end
end
end # end in wrong place should be on the end

def self.cards_total(cards)
  total # lack of = 0
  for card in cards
    total += card.value
    return "You have a total of" + total # needs string interpolation
  end
end
