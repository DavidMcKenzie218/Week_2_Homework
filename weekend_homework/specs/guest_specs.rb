require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guest'

class GuestTest < MiniTest::Test

  def setup
    @new_guest = Guest.new("David")
  end

  def test_guest_has_a_name
    assert_equal("David", @new_guest.name())
  end 

end