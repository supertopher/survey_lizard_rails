class UserController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end

  def destroy
    session.clear
    # redirect_to root
  end
end
