require('minitest/autorun')
require('minitest/rg')
require_relative('../testing_task_B.rb')

class TestCardGame < MiniTest::Test

  def setup
    @card1 = Card.new("Spades", 1)
    @card2 = Card.new("Hearts", 2)
    @cards = [@card1, @card2]
    @game = CardGame.new(@cards)
  end

  def test_check_for_ace__true()
    result = @game.check_for_ace(@card1)
    assert_equal(true, result)
  end

  def test_check_for_ace__false()
    result = @game.check_for_ace(@card2)
    assert_equal(false, result)
  end

  def test_highest_card__win()
    @card1 = Card.new("Spades", 3)
    result = @game.highest_card(@card1, @card2)
    assert_equal(@card1, result)
  end

  def test_highest_card__lose()
    result = @game.highest_card(@card1, @card2)
    assert_equal(@card2, result)
  end
  
  def test_game_cards_total()
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 3", result)
  end
end