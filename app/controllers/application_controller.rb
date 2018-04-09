class ApplicationController < ActionController::API

  def issue_token(payload)
    JWT.encode(payload, "xxxx")
  end

  def decode_token
    JWT.decode(get_token, "xxxx")[0]
  end

  def current_use
    decoded_hash = decode_token
    User.find(decoded_hash["user_id"])
  end

  def get_token
    request.headers["Authorization"]
  end

end
