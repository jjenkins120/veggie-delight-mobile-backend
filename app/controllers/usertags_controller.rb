class UsertagsController < ApplicationController

    def index
        user_tags = UserTag.all 
        render json: user_tags
    end

    def show
        user_tag = UserTag.find(params[:id])
        render json: user_tag
    end

    def create
        user_tag = UserTag.create(user_tag_params)
        render json: user_tag
    end

    def update
        user_tag = UserTag.find(params[:id])
        user_tag.update(user_tag_params)
        render json: user_tag
    end

    def destroy
        user_tag = UserTag.find(params[:id])
        user_tag.destroy
        render json: { message: 'success'}
    end

    private

    def user_tag_params
        params.require(:user_tag).permit(:id, :user_id, :tag_id)
    end

end
