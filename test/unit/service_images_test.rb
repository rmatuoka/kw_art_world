require 'test_helper'

class ServiceImagesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ServiceImages.new.valid?
  end
end
