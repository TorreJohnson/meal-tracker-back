class ApplicationController < ActionController::API

  def issue_token(payload)
    JWT.encode(payload, "xxxx")
  end

  def decode_token
    JWT.decode(get_token, "xxxx")[0]
  end

  def current_use
    decoded_hash = decode_token
    if(decoded_hash.has_key?("user_id"))
      User.find(decoded_hash["user_id"])
    elsif(decoded_hash.has_key?("nutritionist_id"))
      Nutritionist.find(decoded_hash["nutritionist_id"])
    end
  end

  def get_token
    request.headers["Authorization"]
  end

end
