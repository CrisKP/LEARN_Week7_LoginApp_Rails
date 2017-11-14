class UsersController < ApplicationController

  def welcome
  end

  def register
    params.permit(:full_name, :street_address, :city, :state, :postal_code, :country, :email, :username, :password)
    params.require(:username)
    params.require(:password)

    # if params.has_key?(:username) && params.has_key?(:password)
    @user = User.new
    @user.username = params[:username]
    @user.password = params[:password]
    # @user.save
    if @user.save
      redirect_to "/confirmation"
    else
      redirect_to "/"
    end
  end

  def confirmation
  end

  def loggedin
    if  User.where(username: params[:username]) #&& password: params[:password])
      @user = User.where(username: params[:username])[0]
      render "/users/loggedin"
    end
  end
end
