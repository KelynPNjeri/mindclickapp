class UsersController < ApplicationController
  before_action :authenticate_user! 
  def main
  end

  def show
    @user = User.find(params[:id])
  end
end
