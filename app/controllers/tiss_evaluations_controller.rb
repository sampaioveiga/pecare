class TissEvaluationsController < ApplicationController
  before_action :authenticate_user!
  #before_action :set_pulmonary_appointement, only: [ :show, :edit, :update, :destroy ]
  before_action :load_patient, only: [ :new, :create ]
  load_and_authorize_resource

  def new
    @tiss_evaluation = @patient.tiss_evaluations.new(
      evaluation_date: Date.today,
      user_id: current_user.id
    )
  end

  def create
    @tiss_evaluation = @patient.tiss_evaluations.build(tiss_evaluation_params)
    if @tiss_evaluation.save
      flash[:success] = t('new-form-saved-flash')
      redirect_to @patient
    else
      render :new
    end
  end

  private

    def load_patient
      @patient = Patient.find(params[:patient_id])
    end

    def tiss_evaluation_params
      params.require(:tiss_evaluation).permit(
        :user_id,
        :evaluation_date,
        :ba_q1,
        :ba_q2,
        :ba_q3,
        :ba_q4,
        :ba_q5,
        :ba_q6,
        :ba_q7,
        :vs_q1,
        :vs_q2,
        :vs_q3,
        :vs_q4,
        :cs_q1,
        :cs_q2,
        :cs_q3,
        :cs_q4,
        :cs_q5,
        :cs_q6,
        :cs_q7,
        :rs_q1,
        :rs_q2,
        :rs_q3,
        :ns_q1,
        :ms_q1,
        :ms_q2,
        :ms_q3,
        :si_q1,
        :si_q2,
        :si_q3,
        :score
      )
    end

end