require 'test_helper'

class EnfoqueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save enfoque without carrera" do
  		enfoque = Enfoque.new(nombre: 'foquito')
  		assert_not enfoque.save
  end
end
