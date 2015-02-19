require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

#  that an unsatisfied validation will prevent a record from saving.
  test "validation works" do
    assert Survey.create(title: "", description: "Some Text", author_id: 4), false
  end

#  that a successful save changes the number of records in the database.
  test "create new survey" do
    assert_difference "Survey.count", 1 do
      Survey.create(title: "Doodle",
        description:"Has text",
          author_id: 1)
    end
  end
end
