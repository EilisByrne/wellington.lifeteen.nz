class Person < ActiveRecord::Base
  belongs_to :role

  validates :name, :role_id, presence: true
end
