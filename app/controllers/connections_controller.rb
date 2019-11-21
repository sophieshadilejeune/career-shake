class ConnectionsController < ApplicationController

  def create
    @connection = Connection.new
    @connection.user = current_user
    @connection.prof_listing = ProfListing.find(params[:prof_listing_id])
    @connection.save
    redirect_to prof_listing_path(@connection.prof_listing)
    authorize @connection
  end

  def destroy
    @connection = current_user.connections.where(prof_listing: ProfListing.find(params[:prof_listing_id])).last
    @connection.destroy
    authorize @connection
    redirect_to prof_listings_path
  end
end
