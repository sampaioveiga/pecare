class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :admin
      can :manage, :all
    end

    # user has no role -> no permition
    #unless user.role.nil?
      # user has role, can manage patients
    #  can :manage, Patient
      
      # Pulmonary Appointments
    #  if user.role.pulmonology === 'pulmonology-user'
    #    can :read, PulmonaryAppointment
    #  end
    #  if user.role.pulmonology === 'pulmonology-superuser'
    #    can :manage, PulmonaryAppointment
    #    can :manage, OxygenTherapySupplier
    #    can :manage, InhalerDevice
    #    can :manage, InhalerDeviceType
    #  end
    #end
  end
end