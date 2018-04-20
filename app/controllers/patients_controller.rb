class PatientsController < ApplicationController
  before_action :set_patient, only: [ :show, :edit, :update ]

  def show
    @pulmonary_appointments = @patient.pulmonary_appointments
  end

  def npsonho
    @patient = Patient.find_by(npsonho: params[:processo])
    if @patient === nil
      @patient = Patient.new(
        name: params[:nome],
        rnu: params[:rnu],
        npsonho: params[:processo]
      )
      render(:new)
    else
      render(:show)
    end
  end

  def index
    @q = Patient.ransack(params[:q])
    @patients = @q.result(distinct: true).order(:name).paginate(page: params[:page])
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      flash[:success] = "#{ t('new-form-saved-flash') }."
      redirect_to(@patient)
    else
      render(:new)
    end 
  end

  def edit
  end

  def update
    if @patient.update_attributes(patient_params)
      flash[:success] = "#{ t('edit-form-saved-flash') }"
      redirect_to(@patient)
    else
      render(:edit)
    end
  end

  private

    def patient_params
      params.require(:patient).permit(
        :name,
        :date_of_birth,
        :rnu,
        :npsonho
      )
    end

    def set_patient
      @patient = Patient.find(params[:id])
    end

end