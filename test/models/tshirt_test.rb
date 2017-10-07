require 'test_helper'

class TshirtTest < ActiveSupport::TestCase
   test "it should check for invalid size" do
     tshirt = Tshirt.new(size:"K", color:"blue", stock:0, price:15.0)
     assert tshirt.invalid?, "Wrongly valid"
   end

   test "it should check for valid size" do
     tshirt = Tshirt.new(size:"M", color:"blue", stock:0, price:15.0)
     assert tshirt.valid?, "Should be valid"
   end

end
