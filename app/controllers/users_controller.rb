class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save
  end

  def destroy
    session.clear
    # redirect_to root
  end
end
