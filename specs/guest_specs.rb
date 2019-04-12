require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < MiniTest:: Test

  def setup
    @guest1 = Guest.new("James")
    @guest2 = Guest.new("Jamie")
    @guest3 = Guest.new("Ralph")
    @guest4 = Guest.new("Diego")
  end

  def test_is_a_customer
    assert_equal("James", @guest1.name)
  end

end
