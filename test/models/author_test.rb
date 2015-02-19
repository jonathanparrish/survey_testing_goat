require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "there is data" do
    assert Author.count > 0
  end

  test "genesis is genesis" do
    assert_equal "Genesis Gutmann", authors(:genesis).name
  end

  test "emails are unique" do
  bad_jp = Author.new(name: "Not JP", email: "jonathan@gmail.com", password: "MyString")
  refute bad_jp.save
  end

#  that one of the six SQL/AREL methods we created on a model last night runs properly.
  test "check that email" do
  assert_equal "zane@cain.org", authors(:genesis).email
  end

end
