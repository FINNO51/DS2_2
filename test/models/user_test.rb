require "test_helper"

class UserTest < ActiveSupport::TestCase
   test "the truth" do
      assert true
   end

   test "should report error" do
      #la variable cartas no existe en ningun otro sitio en los tests
      cartas_azules
      assert true
   end
end
