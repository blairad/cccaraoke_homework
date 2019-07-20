class Guest

  
  attr_accessor :cash, :guest_name

  def initialize(guest_name, cash)
    @guest_name = guest_name
    @cash = cash
    
  end

  def guest_can_check_in
    return true
  end

  def guest_can_check_out
    return false
  end

  # def guest_has_money_to_check_in
  #   if cash >= entry_fee
  #     true
  #   else
  #     false
  #   end
  # end

end
