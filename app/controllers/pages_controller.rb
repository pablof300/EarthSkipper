class PagesController < ApplicationController
  def index
    if logged_in?
      redirect_to dashboard_path
    end
  end
end
