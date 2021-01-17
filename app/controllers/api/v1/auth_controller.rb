require 'JWT'

class Api::V1::AuthController < ApplicationController

    def hmac_secret
        ENV["API_SECRET_KEY"]
    end
    # The hmac_secret method just gets and returns our secret from our environment

    def create
        user = User.find_by(email: params[:email])
        
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = JWT.encode(payload, hmac_secret, 'HS256')
            render json: {id: user.id, email: user.email, token: token}
        else
            render json: {error: 'Invalid email or password.'}
        end
    end 

    def show
        token = request.headers[:Authorization].split(' ').last  
        decoded_token = JWT.decode(token, hmac_secret, true, { algorithm: 'HS256'} )
        user_id = decoded_token[0]['user_id']
        user = User.find(user_id)

        if user
            render json: { id: user.id, email: user.email, token: token }
        else
            render json: { error: 'Invalid token'}
        end
    end 

end