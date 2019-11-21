class MessagesController < ApplicationController
  def create
    @message = Message.new
    @message.user = current_user
    @message.connection = Connection.find(params[:connection_id])
    @message.content = params[:content]
    @message.save
    authorize @message
    redirect_to prof_listing_connection_messages_path(@message.connection.prof_listing, @message.connection)
  end

  def index
    @messages = policy_scope(Message).order(created_at: :asc).where(connection: Connection.find(params[:connection_id]))
  end
end
