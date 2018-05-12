class UsersController < ApplicationController

    def index
        
    end

    def new
        @user = User.new
        render :layout => false                
    end

    def create

        @user = User.new(user_params)
        if @user.save
            redirect_to root_path
        else
            redirect_to new_user_path
        end
        
    end

    private
        def user_params
            params.require(:user).permit(:name, :birthDate, :email, :password)
        end
end
