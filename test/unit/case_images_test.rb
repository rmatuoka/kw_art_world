require 'test_helper'

class CaseImagesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert CaseImages.new.valid?
  end
end
