require_relative './../test_helper'

class ProjectTest < ActiveSupport::TestCase
  test "Validates name and description" do
    project = Project.new
    project.valid?
    assert_equal 2, project.errors.messages.size,
      "Expected exactly 2 error messages"
    assert project.errors.messages.include?(:name)
    assert project.errors.messages.include?(:description)
  end
end
