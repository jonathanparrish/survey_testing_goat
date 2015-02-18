require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "check that email" do
  assert_equal "zane@cain.org", authors(:genesis).email
  end
end
