class PatientsController < ApplicationController

  def show
    @patient = Patient.find(params[:id])
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
      flash[:success] = "#{ t('new-patient-created-flash') }."
      redirect_to @patient
    else
      render :new
    end
  end

  private

    def patient_params
      params.require(:patient).permit(
        :name,
        :date_birth,
        :rnu,
        :npsonho
      )
    end

end