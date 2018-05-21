class Ability
  include CanCan::Ability

  def initialize(user)
    #if user.admin?
    #  can :manage, :all
    #end

    # user has no role -> no permition
    unless user.role.nil?
      # user has role, can manage patients
      can :manage, Patient
      
      # Pulmonary Appointments
      if user.role.pulmonology === 1
        can :read, PulmonaryAppointment
      end
      if user.role.pulmonology === 2
        can :manage, PulmonaryAppointment
      end
    end
  end
end
