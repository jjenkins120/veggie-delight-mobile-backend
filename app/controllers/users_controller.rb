class UsersController < ApplicationController
    wrap_parameters :user, include: [:id, :email, :password, :first_name, :birth_date, :veggie_type, :bio, :profile_img_url, :interested_in, :location, :gender, :interested_in_age, :interested_in_gender, :interested_in_location, :interested_in_veggie]

    def index
        users = User.all 
        render json: users, include: '*.*'
    end

    def show
        user = User.find(params[:id])
        render json: user, include: '*.*'
    end

    def create
        user = User.create(user_params)
        render json: user

    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: { message: 'success'}
    end

    private

    def user_params
        params.require(:user).permit(:id, :email, :password, :first_name, :birth_date, :veggie_type, :bio, :profile_img_url, :interested_in_age, :interested_in_gender, :interested_in_location, :interested_in_veggie, :location, :gender)
    end

end
