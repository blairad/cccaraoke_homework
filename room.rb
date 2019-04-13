

class Room

  attr_reader :room, :capacity, :song

  def initialize(room, capacity)
    @room = room
    @capacity = capacity
  end

  def check_in_guest(guest)
    @capacity += guest
  end

  def check_out_guest(guest)
    @capacity -= guest
  end

end
#
