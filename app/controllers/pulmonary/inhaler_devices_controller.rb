class Pulmonary::InhalerDevicesController < ApplicationController
  def index
    @inhaler_devices = InhalerDevice.order(:active_ingredient_inn)
  end
end
