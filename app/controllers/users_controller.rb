class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

    def show
        # @user = User.find(params[:id])
        @articles = @user.articles
    end

    def new
        @user = User.new
    end

    def edit
        # @user = User.find(params[:id])
    end
    
    def update
        # @user = User.find(params[:id])
        if @user.update(user_params)
          flash[:notice] = "Your account information was successfully updated"
          redirect_to articles_path
        else
          render 'edit'
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id # We get code for login from session controller - and paste here
          # And instead of session[:user_id] = user.id we will use @user.id
          # That will sign the user in once they sign up
          flash[:notice] = "Welcome #{@user.username}, you have successfully signed up"
          redirect_to articles_path
        else
          render 'new'
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    def set_user
        @user = User.find(params[:id])
    end
end