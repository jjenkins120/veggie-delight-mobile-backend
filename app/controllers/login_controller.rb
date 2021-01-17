class LoginController < ApplicationController

  # def create
  #   user = User.find_by("lower(email) = ?", user_params[:email].downcase)
  #   if user && user.authenticate(user_params[:password])
  #     render json: { token: token(user.id), user_id: user.id }, status: :created 
  #   else 
  #     render json: { errors: [ "Sorry, incorrect email or password" ] }, status: :unprocessable_entity
  #   end 
  # end

  # First, the create method tries to find a user with the email sent in the params.

  # private 

  # def user_params
  #   params.require(:user).permit(:email, :password)
  # end

end
