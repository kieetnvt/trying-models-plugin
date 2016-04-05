require 'test_helper'

class CoreTest < ActiveSupport::TestCase
  test "say hello new plugin" do
    assert_equal "plugin! Hello World!", "Hello World".to_hello_world
  end
end
