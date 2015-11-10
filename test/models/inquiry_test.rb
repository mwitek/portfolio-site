require_relative './../test_helper'

class InquiryTest < ActiveSupport::TestCase
  test "Validates email and body" do
    inquiry = Inquiry.new
    refute inquiry.valid?
    assert_equal 2, inquiry.errors.messages.size,
      "Expected exactly 2 error messages"
    assert inquiry.errors.messages.include?(:email)
    assert inquiry.errors.messages.include?(:body)
  end
end
