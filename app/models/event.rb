class Event < ActiveRecord::Base
  validates :link, :name, presence: true
end
