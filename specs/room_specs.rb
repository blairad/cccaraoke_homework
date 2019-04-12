require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < MiniTest:: Test

  def setup
    @room1 = Room.new("No. 1")
    @room2 = Room.new("No. 2")
  end

  def test_make_aRoom
    assert_equal("No. 1", @room1.room)
  end


end
