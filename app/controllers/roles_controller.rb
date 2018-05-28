class RolesController < ApplicationController
  before_action :authenticate_user!
  #before_action :set_roles, only: [ :show ]
  load_and_authorize_resource

  def index
    @users = User.order(:full_name)
  end

  def show
    @user = User.find(params[:id])
    @roles = @user.roles
  end

  def create
    user = User.find(params[:user_id])
    role = Role.find(params[:role])

    if role.resource_type.nil?
      user.add_role role.name.to_sym
    else
      user.add_role role.name, role.resource_type.constantize
    end
    flash[:success] = t(".add-role-flash")
    redirect_to roles_path()
  end

  def destroy
    user = User.find(params[:user_id])
    role = Role.find(params[:id])

    user.remove_role role.name
    flash[:success] = t(".remove-role-flash")
    redirect_to roles_path()
  end

  private

    def set_roles
      @user = User.find(params[:id])
      @roles = @user.roles 
    end
end