class DashboardController < ApplicationController
  def show_time
    @surveys = Survey.all
  end

  def render_time
    @surveys = Survey.all
    render "show_time"
  end


  def go_to_time
    redirect_to dashboard_show_time_path

  end
end
