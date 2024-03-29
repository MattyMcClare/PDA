require('minitest/autorun')
require('minitest/rg')
require_relative('../card.rb')


class TestCard < MiniTest::Test

  def setup()
    @card = Card.new("Spades", 1)
  end

  def test_card_suit()
    assert_equal("Spades", @card.suit)
  end

  def test_card_value()
    assert_equal(1, @card.value)
  end

end