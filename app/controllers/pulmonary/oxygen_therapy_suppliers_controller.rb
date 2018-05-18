class Pulmonary::OxygenTherapySuppliersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_oxygen_therapy_supplier, only: [ :edit, :update ]

  def index
    @oxygen_therapy_suppliers = OxygenTherapySupplier.order(:supplier_name)
  end

  def show
    redirect_to pulmonary_oxygen_therapy_suppliers_path
  end

  def new
    @oxygen_therapy_supplier = OxygenTherapySupplier.new
  end

  def create
    @oxygen_therapy_supplier = OxygenTherapySupplier.new(oxygen_therapy_supplier_params)
    if @oxygen_therapy_supplier.save
      flash[:success] = t('.new-oxygen-therapy-supplier-flash')
      redirect_to pulmonary_oxygen_therapy_suppliers_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @oxygen_therapy_supplier.update(oxygen_therapy_supplier_params)
      flash[:success] = t('.edit-oxygen-therapy-supplier-flash')
      redirect_to pulmonary_oxygen_therapy_suppliers_path
    else
      render :edit
    end
  end

  private

    def oxygen_therapy_supplier_params
      params.require(:oxygen_therapy_supplier).permit(
        :supplier_name
      )
    end

    def set_oxygen_therapy_supplier
      @oxygen_therapy_supplier = OxygenTherapySupplier.find(params[:id])
    end

end