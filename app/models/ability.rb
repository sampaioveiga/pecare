class Ability
  include CanCan::Ability

  def initialize(user)

    # admin can access all
    if user.has_role? :admin
      can :manage, :all
    end

    # reader can view patients
    if user.has_role? :manager, PulmonaryAppointment
      can :manage, Patient
      can :manage, PulmonaryAppointment
      can :manage, InhalerDeviceType
      can :manage, InhalerDevice
      can :manage, OxygenTherapySupplier
    elsif user.has_role? :reader, PulmonaryAppointment
      can :read, Patient
      can :read, PulmonaryAppointment
    end

    # reader can view patients
    if user.has_role? :manager, TissEvaluation
      can :manage, Patient
      can :manage, TissEvaluation
    elsif user.has_role? :reader, TissEvaluation
      can :read, Patient
      can :read, TissEvaluation
    end

  end
end