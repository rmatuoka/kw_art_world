require 'test_helper'

class CaseTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Case.new.valid?
  end
end
