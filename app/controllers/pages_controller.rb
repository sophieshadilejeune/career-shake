class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    if current_user.professional
      @proflisting = ProfListing.where(user: current_user)[0]
      @connections = Connection.where(prof_listing: @proflisting)
    else
      @connections = Connection.where(user: current_user)
    end
  end
end
