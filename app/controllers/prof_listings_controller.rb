class ProfListingsController < ApplicationController
  def index
    @proflistings = ProfListing.all
  end

  def new
    @proflisting = ProfListing.new
  end

  def create
    @proflisting = ProfListing.new(proflisting_params)
    @proflisting.user = current_user
    if @proflisting.save
      redirect_to prof_listings_path
    else
      render :new
    end
  end

  private

  def proflisting_params
    params.require(:prof_listing).permit(:company, :role, :industry, :active)
  end
end
