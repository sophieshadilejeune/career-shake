class ConnectionsController < ApplicationController


  def create
    @connection = Connection.new
    @connection.user = current_user
    @connection.prof_listing = ProfListing.find(params[:prof_listing_id])
    if @connection.save
      flash[:alert] = "You added a new connection"
      redirect_to prof_listing_path(@connection.prof_listing)
      authorize @connection
    else
      redirect_to prof_listings_path
    end
  end

  def destroy
    @connection = current_user.connections.where(prof_listing: ProfListing.find(params[:prof_listing_id])).last
    @connection.destroy
    flash[:alert] = "You deleted a connection"
    authorize @connection
    redirect_to prof_listings_path
  end
end
