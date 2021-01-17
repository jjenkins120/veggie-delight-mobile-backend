class ApplicationController < ActionController::API

    # private

    # def token(user_id)
    #   payload = { user_id: user_id }
    #   JWT.encode(payload, hmac_secret, 'HS256')
    # end
    # # The token method takes in a user id and uses it to create a payload. It then returns makes a call to the JWT encode class method which returns to us a signed token with the payload.
  
    # def hmac_secret
    #   ENV["API_SECRET_KEY"]
    # end
    # The hmac_secret method just gets and returns our secret from our environment

    # def client_has_valid_token?
    #   !!current_user_id
    # end
    # The client_has_valid_token? method calls the current_user_id value and returns a forced boolean
  
    # def current_user_id
    #   begin
    #     token = request.headers["Authorization"]
    #     decoded_array = JWT.decode(token, hmac_secret, true, { algorithm: 'HS256' })
    #     payload = decoded_array.first
    #   rescue #JWT::VerificationError
    #     return nil
    #   end
    #   payload["user_id"]
    # end
    # The current_user_id method tries to pull out the user id from the token by using the JWT decode class method. If it successfully does this it returns the user’s id. If not, an exception is thrown and nil is returned.
  
    # def require_login
    #   render json: {error: 'Unauthorized'}, status: :unauthorized if !client_has_valid_token?
    # end
    # the require_login method will be used as a before action inside of our controllers. It checks if the client has a valid token rendering an error to the client if it does not and does not allow access to the resource.

end
