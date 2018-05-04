class Pulmonary::InhalerDeviceTypesController < ApplicationController
  def index
    @inhaler_device_types = InhalerDeviceType.order(:inhaler_type_name)
  end
end
