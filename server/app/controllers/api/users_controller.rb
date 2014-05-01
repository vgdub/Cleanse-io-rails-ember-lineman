module Api
  class UsersController < BaseController
    def index
      if params[:ids]
        @users = User.find(params[:ids])
      else
        @users = User.all
      end
      render json: @users, each_serializer: UserSerializer
    end

    def show
      @user = User.find(params[:id])
      render json: @user, each_serializer: UserSerializer
    end
  end
end