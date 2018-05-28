class Role < ApplicationRecord
  has_and_belongs_to_many :users, :join_table => :users_roles


  belongs_to :resource,
           :polymorphic => true,
           :optional => true


  validates :resource_type,
          :inclusion => { :in => Rolify.resource_types },
          :allow_nil => true

  scopify

  def full_role
    if self.resource_type.nil?
      self.name
    else
      self.name + ": #{self.resource_type}"
    end
  end
end
