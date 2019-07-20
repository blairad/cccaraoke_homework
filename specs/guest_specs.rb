require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < MiniTest:: Test

  def setup
    @guest1 = Guest.new("James", 20)
    @guest2 = Guest.new("Walker", 25)
    @guest3 = Guest.new("Ru", 50)
    @guest4 = Guest.new("Peter", 25)
  end

  def test_has_a_name
    assert_equal("James", @guest1.guest_name)
  end

  def test_has_cash
    assert_equal(50, @guest3.cash)
  end

end
