require 'test_helper'

class AreaInvestigacionTest < ActiveSupport::TestCase

    test '#area:investigacions' do
      assert_equal 2, AreaInvestigacion.count
    end
end
