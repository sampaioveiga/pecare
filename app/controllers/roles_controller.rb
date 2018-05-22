class RolesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_role, only: [ :edit, :update ]
  load_and_authorize_resource

  def index
    @users = User.order(:full_name).includes(:role)
  end

  def show
    redirect_to roles_path
  end

  def edit
  end

  def update
    if @role.update(roles_params)
      flash[:success] = 'Yes'
      redirect_to roles_path
    else
      render :edit
    end
  end

  private

    def roles_params
      params.require(:role).permit(
        :pulmonology,
        :icu
      )
    end

    def set_role
      @user = User.find(params[:id])
      @role = @user.role
    end

end