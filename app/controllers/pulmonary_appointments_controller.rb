class PulmonaryAppointmentsController < ApplicationController

  def new
    @patient = Patient.find(params[:patient_id])
    @pulmonary_appointment = @patient.pulmonary_appointments.new(
      appointment_date: Date.today,
      user_id: current_user.id
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
    @pulmonary_appointment.user_id = current_user.id
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
        :user_id,
        :appointment_date,
        :weight,
        :blood_pressure,
        :pulse,
        :oxygen,
        :pef,
        :inhaler,
        :medication,
        prescribed_inhalers_attributes: [
          :id,
          :pulmonary_appointment_id,
          :inhaler_device_id,
          :before_technic,
          :after_technic,
          :observation,
          :_destroy
        ]
      )
    end

end