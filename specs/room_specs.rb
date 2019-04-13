
require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")


class RoomTest < MiniTest:: Test

  def setup
    @room = Room.new("Room One", 0)
    @capacity = nil
    @capacity_max = 5
  end

  def test_make_a_room
    assert_equal("Room One", @room.room)
  end

  def test_check_in_guest_to_room
    @room.check_in_guest(1)
    assert_equal(1, @room.capacity)
  end

end
