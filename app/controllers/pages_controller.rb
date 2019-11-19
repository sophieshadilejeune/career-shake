class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :prof_listings_index

  def home
  end
end
