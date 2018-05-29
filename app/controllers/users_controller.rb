class UsersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @users = User.order(:full_name)
  end

  def show
    @user = User.find(params[:id])
    @roles = @user.roles
  end
  
end