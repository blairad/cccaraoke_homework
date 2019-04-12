require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < MiniTest:: Test

  def setup
    @customer1 = Customer.new("James")
    
  end

end
