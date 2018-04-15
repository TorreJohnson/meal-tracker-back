class Api::V1::MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    if @message.save
      render json: @message
    else
      render json: {errors: @message.errors.full_messages}
    end
  end

  def update
    @message = Message.find_by(id: params[:id])
    if @message.update(message_params)
      render json: @message
    else
      render json: {errors: @message.errors.full_messages}
    end
  end

  private

  def message_params
    params.require(:message).permit(:id, :user_id, :nutritionist_id, :parent_message, :subject, :body, :sender_type, :sender_id, :read)
  end

end
