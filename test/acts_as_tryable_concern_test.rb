require 'test_helper'

class ActsAsTryableConcernTest < ActiveSupport::TestCase
  test "class methods" do
    assert_equal "admin", Article.default_author
  end

  test "instance methods" do
    draft = Article.new(name: "draft_name", content: "draft_content")
    assert_equal "#{draft.name.upcase}", draft.name_uppercase
  end
end
