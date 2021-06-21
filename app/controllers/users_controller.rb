class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.all
  end

  def show
    @users = User.all
    @user = User.all
  end
end
