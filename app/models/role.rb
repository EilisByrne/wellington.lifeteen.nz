class Role < ActiveRecord::Base
  COORDINATOR = "Coordinator"
  ADMIN = "Admin"
  CORE_MEMBER = "CORE Member"

  ROLES = [COORDINATOR, CORE_MEMBER, ADMIN]

  PRIVILEGED = [COORDINATOR, ADMIN]

  has_many :people

  validates :name, inclusion: ROLES, presence: true
end
