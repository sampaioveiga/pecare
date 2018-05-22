class Pulmonary::InhalerDeviceTypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_inhaler_device_type, only: [ :edit, :update ]
  load_and_authorize_resource

  def index
    @inhaler_device_types = InhalerDeviceType.order(:inhaler_type_name)
  end

  def show
    redirect_to pulmonary_inhaler_device_types_path
  end

  def new
    @inhaler_device_type = InhalerDeviceType.new
  end

  def create
    @inhaler_device_type = InhalerDeviceType.new(inhaler_device_type_params)
    if @inhaler_device_type.save
      flash[:success] = t('.new-inhaler-device-type-flash')
      redirect_to pulmonary_inhaler_device_types_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @inhaler_device_type.update_attributes(inhaler_device_type_params)
      flash[:success] = t('.edit-inhaler-device-type-flash')
      redirect_to pulmonary_inhaler_device_types_path
    else
      render :edit
    end
  end

  private

    def inhaler_device_type_params
      params.require(:inhaler_device_type).permit(
        :inhaler_type_name
      )
    end

    def set_inhaler_device_type
      @inhaler_device_type = InhalerDeviceType.find(params[:id])
    end
end
