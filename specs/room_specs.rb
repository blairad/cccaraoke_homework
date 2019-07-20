
require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")


class RoomTest < MiniTest:: Test

  def setup
    @room1 = Room.new("one", 5, [@guest3, @guest4], [@song1, @song3])
    @room2 = Room.new("two", 5, [@guest1, @guest2], [@song2, @song4])
    @room3 = Room.new("two", 5, [], [@song2, @song4])

    @song = Song.new("Hey Jude")
    @song1 = Song.new("No Limit")
    @song2 = Song.new("Go West")
    @song3 = Song.new("Son of a Preacherman")

    @guest1 = Guest.new("James", 20)
    @guest2 = Guest.new("Walker", 25)
    @guest3 = Guest.new("Ru", 50)
    @guest4 = Guest.new("Peter", 25)
  end

  def test_room_has_a_name
    assert_equal("one", @room1.name )
  end
  
  def test_check_room_capacity
    assert_equal(5, @room1.capacity)
  end

  def test_check_guest_into_room
    @room1.add_guest_to_room(@guest1)
    assert_equal(3, @room1.guest_total.count)
  end

  def test_check_guest_out_of_room
    @room2 = Room.new("two", 1, [@guest1.guest_name])
    @room2.check_out_guest(@guest1)
    assert_equal(1, @room2.guest_total.count)
  end
 

end
