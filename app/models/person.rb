class Person < ActiveRecord::Base
  belongs_to :role
  has_one :avatar_file, dependent: :destroy

  has_attached_file :avatar,
    storage: :database,
    database_table: 'avatar_files',
    url: 'people/:id/show_avatar/:style',
    styles: { medium: "300x300>" },
    default_url: "/images/:style/missing.png",
    cascade_deletion: true

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates :name, :role_id, presence: true
  validates_attachment :avatar,
    content_type: { content_type: ["image/jpeg", "image/png"] },
    size: { in: 0..30.kilobytes }

  def self.people_by_role
    Person.joins(:role).select('people.*, roles.name as role_name').group_by(&:role_name)
  end
end
