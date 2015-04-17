class Person < ActiveRecord::Base
  belongs_to :role

  has_attached_file :avatar, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates :name, :role_id, presence: true
  validates_attachment :avatar, :content_type => { :content_type => "image/jpeg" },
    :size => { :in => 0..30.kilobytes }

end
