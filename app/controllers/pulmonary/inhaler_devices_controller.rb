class Pulmonary::InhalerDevicesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_inhaler_device, only: [ :edit, :update ]
  load_and_authorize_resource

  def index
    @inhaler_devices = InhalerDevice.order(inhaler_device_type: :asc ,active_ingredient_inn: :asc)
  end

  def show
    redirect_to pulmonary_inhaler_devices_path
  end

  def new
    @inhaler_device = InhalerDevice.new
  end

  def create
    @inhaler_device = InhalerDevice.new(inhaler_device_params)
    if @inhaler_device.save
      flash[:success] = t('.new-inhaler-device-flash')
      redirect_to pulmonary_inhaler_devices_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @inhaler_device.update(inhaler_device_params)
      flash[:success] = t('.edit-inhaler-device-flash')
      redirect_to pulmonary_inhaler_devices_path
    else
      render :edit
    end
  end

  private

    def inhaler_device_params
      params.require(:inhaler_device).permit(
        :inhaler_device_type,
        :active_ingredient_inn,
        :active_ingredient_trade_name,
        :medicine_dosage,
        :active
      )
    end

    def set_inhaler_device
      @inhaler_device = InhalerDevice.find(params[:id])
    end
end
