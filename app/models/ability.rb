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
    elsif user.has_role? :reader, PulmonaryAppointment
      can :read, Patient
      can :read, PulmonaryAppointment
    end

  end
end