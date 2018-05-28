class RolesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_roles, only: [ :show ]
  load_and_authorize_resource

  def index
    @users = User.order(:full_name)
  end

  def show
  end

  def add
    user = User.find(params[:user_id])
    role = Role.find(params[:role_id])

    if role.resource_type.nil?
      user.add_role role.name.to_sym
      flash[:success] = user.full_name + " " + role.name
    else
      user.add_role role.name, role.resource_type.constantize
      flash[:success] = user.full_name + " " + role.name + " " + role.resource_type
    end
    redirect_to roles_path()
  end

  def destroy
    user = User.find(params[:id])
    role = Role.find(params[:role_id])

    user.remove_role params[:role]
    flash[:success] = "remove role"
    redirect_to roles_path()
  end

  private

    def set_roles
      @user = User.find(params[:id])
      @roles = @user.roles
    end
end