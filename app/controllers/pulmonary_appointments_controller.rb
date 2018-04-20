class PulmonaryAppointmentsController < ApplicationController

  def new
    @patient = Patient.find(params[:patient_id])
    @pulmonary_appointment = @patient.pulmonary_appointments.new(
      date: Date.today
    )
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @pulmonary_appointment = @patient.pulmonary_appointments.build(pulmonary_appointment_params)
    if @pulmonary_appointment.save
      flash[:success] = t('new-form-saved-flash')
      redirect_to @patient
    else
      render :new
    end
  end

  def edit
    @pulmonary_appointment = PulmonaryAppointment.find(params[:id])
    @patient = @pulmonary_appointment.patient
  end

  def update
    @pulmonary_appointment = PulmonaryAppointment.find(params[:id])
    @patient = @pulmonary_appointment.patient
    if @pulmonary_appointment.update(pulmonary_appointment_params)
      flash[:success] = t('edit-form-saved-flash')
      redirect_to @patient
    else
      render :edit
    end
  end

  def destroy
    @pulmonary_appointment = PulmonaryAppointment.find(params[:id])
    @patient = @pulmonary_appointment.patient
    @pulmonary_appointment.destroy
    flash[:danger] = t('item-removed-flash')

    redirect_to @patient
  end

  private

    def pulmonary_appointment_params
      params.require(:pulmonary_appointment).permit(
        :date,
        :weight,
        :blood_pressure,
        :pulse,
        :oxygen,
        :pef,
        :inhaler,
        :medication
      )
    end

end