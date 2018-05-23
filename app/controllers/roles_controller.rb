class RolesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [ :show, :edit, :update ]
  load_and_authorize_resource

  def index
    @users = User.order(:full_name)
  end

  def show
  end

  def edit
    render :show
  end

  def update
    #params[:user][:role_ids] ||= []

    if @user.update_attributes(role_params)
      flash[:success] = t('.role-successfully-updated-flash')
      redirect_to roles_path
    else
      render :show
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def role_params
      params.require(:user).permit(
        role_ids: [
          :id,
          :user_id,
          :role_id
        ]
      )
    end

end