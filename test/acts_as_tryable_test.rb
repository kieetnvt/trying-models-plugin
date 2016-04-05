require 'test_helper'

class ActsAsTryableTest < ActiveSupport::TestCase
  test "hello acts_as_tryable" do
    assert_equal "say hello with acts_as_tryable intergate with model", Article.acts_as_tryable
  end

  test "add instance method" do
    draft = Article.new(name: "draft_name", content: "draft_content")
    assert_equal "name is '#{draft.name}' and content is '#{draft.content}'", draft.full_content
  end
end
