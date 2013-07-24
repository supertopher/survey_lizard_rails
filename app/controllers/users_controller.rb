class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end

  def create
    puts "you are in the user path idiot"
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Your account was created successfully"
      redirect_to root_url
    else
      flash[:notice] = "There was an error creating your account please try again"
      redirect_to new_user_path
    end
  end

  def destroy
    session.clear
    # redirect_to root
  end
end
