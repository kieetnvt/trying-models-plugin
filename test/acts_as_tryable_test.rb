require 'test_helper'

class ActsAsTryableTest < ActiveSupport::TestCase
  test "hello acts_as_tryable" do
    assert_equal "say hello with acts_as_tryable intergate with model", Article.acts_as_tryable
  end
end
