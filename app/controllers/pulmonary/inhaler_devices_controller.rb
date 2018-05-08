class Pulmonary::InhalerDevicesController < ApplicationController
  def index
    @inhaler_devices = InhalerDevice.order(inhaler_device_type: :asc ,active_ingredient_inn: :asc)
  end
end
