require('pry')
require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")


class RoomTest < MiniTest:: Test

  def setup
    @room = Room.new("No. 1", 0)
    @capacity = nil
    @capacity_max = 5
  end

  def test_make_a_room
    assert_equal("No. 1", @room.room)
  end

  # def test_check_in_guest_to_room
  #   @room.check_in_guest(@guest1)
  #   assert_equal(1, @room.name.count)
  #   binding.pry
  # end

end
