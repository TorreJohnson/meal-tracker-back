class Api::V1::MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      render json: @message
    end
  end

  def index
    @messages = Message.all
    render json: @messages
  end

  def show
    @message = Message.find_by(id: params[:id])
    render json: @message
  end

  def update
    @message = Message.find_by(id: params[:id])
    if @message.update(message_params)
      render json: @message
    end
  end

  def destroy
    @message = Message.find_by(id: params[:id])
    if @message.destroy
    end
  end

  private

end
