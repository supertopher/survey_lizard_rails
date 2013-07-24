class SessionsController < ApplicationController

  def new
    @user = User.new
    # @user = User.find_by_user_name(params[:user_name])
  end

  def create
    p "this is the create sessions controller"
    p params
    @user = User.find_by_user_name(params[:session][:user_name])

    if @user && @user.authenticate(params[:session][:password])
      login @user
      p "after login method"
      flash[:success] = "Welcome #{@user.user_name}"
      redirect_to root_path
    else
      flash[:notice] = "an error has occured"
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
