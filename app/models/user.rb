class User < ApplicationRecord
  rolify
  has_many :pulmonary_appointments
  before_save { self.email = email.downcase }
  after_create :assign_default_role

  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  belongs_to :office_location
  belongs_to :department

  def assign_default_role
    self.add_role(:no_access) if self.roles.blank?
  end

  validates :full_name,
    presence: true
  validates :employee_id,
    presence: true,
    uniqueness: true,
    numericality: true,
    length: { is: 5 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@ulsne.min-saude.pt/i
  validates :email,
    presence: true,
    uniqueness: { case_sensitive: false },
    format: { with: VALID_EMAIL_REGEX }
end