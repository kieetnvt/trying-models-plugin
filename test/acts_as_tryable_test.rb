require 'test_helper'

class ActsAsTryableTest < ActiveSupport::TestCase
  test "initialize acts_as_tryable in model" do
    assert_equal true, Article.acts_as_tryable
  end

  test "call anomyous function in model" do
    draft_article = Article.new(name: "draft_name", content: "draft_content")
    assert_equal draft_article.anomyous, "Undefined Method"
  end
end
