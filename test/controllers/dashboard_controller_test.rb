require 'test_helper'

class DashboardControllerTest < ActionController::TestCase



#that a get request returns a success response (e.g. that a page loads successfully)
  test "should get show_time" do
    get :show_time
    assert_response :success

#   that the right number of a certain element exists on a page

# I believe that these both pass because there is and 'a' on show_time
# and there is a 'p' in the layouts application.html.erb which the show_time
# inherits from....? When I assert_select("h3") I get an failure.
    assert_select("p")
    assert_select("a")
# interestingly, on the page, loads print out, but I think this number matches the
# fixtures amount
    assert_select("p.survey_title", Survey.count)
  end


# that an expected template is rendered
  test "should get render_time" do
    get :render_time
    assert_response :success
    assert_template "show_time"
  end

  test "should get go_to_time" do
    get :go_to_time
    assert_redirected_to dashboard_show_time_path
  end

end
