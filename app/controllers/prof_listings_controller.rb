class ProfListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:industry].present?
      @proflistings = policy_scope(ProfListing).order(created_at: :desc).where(industry: params[:industry])
    else
      @proflistings = policy_scope(ProfListing).order(created_at: :desc)
    end
  end

  def show
    @proflisting = ProfListing.find(params["id"])
    authorize @proflisting
  end

  def new
    @proflisting = ProfListing.new
    authorize @proflisting
  end

  def create
    @proflisting = ProfListing.new(proflisting_params)
    @proflisting.user = current_user
    if @proflisting.save
      redirect_to prof_listings_path
    else
      render :new
    end
    authorize @proflisting
  end

  private

  def proflisting_params
    params.require(:prof_listing).permit(:company, :role, :industry, :active)
  end
end
