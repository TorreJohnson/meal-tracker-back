require 'spec_helper'
require 'rails_helper'
require 'jwt'

describe Api::V1::UsersController , :type => :api do
  context 'when the user does not exist' do

  before do
    token = JWT.encode({user: User.first.id},
      ENV["AUTH_SECRET"], "HS256")
      header "Authorization", "Bearer #{token}"
      get "/users/-1"
    end

    it 'responds with a 404 status' do
      expect(last_response.status).to eq 404
    end

    it 'responds with a message of Not Found' do
      message = json["errors"].first["detail"]
      expect(message).to eq("Not found")
    end

  end

end
