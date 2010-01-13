require 'test_helper'

class ContactUsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ContactUs.new.valid?
  end
end
