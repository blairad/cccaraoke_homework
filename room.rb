class Room

  attr_accessor :name, :capacity, :guest_total, :list_song


  def initialize(name, capacity, guest_total = [], list_song = [])
    @name = name
    @capacity = capacity
    @guest_total = guest_total
    @listsong = list_song
  end

  def add_guest_to_room(guest_name)
    if guest_name.guest_can_check_in
    @guest_total.push(guest_name)
    end
     @guest_total.count
  end

  def check_out_guest(guest_name)
    if guest_name.guest_can_check_out
    @guest_total.pop(guest_name)
    end
    @guest_total.count
  end




end
