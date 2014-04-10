class Activity < ActiveRecord::Base
  has_many :registrations
  has_many :participants, through: :registrations, source: :user

  belongs_to :planner, class_name: "User", foreign_key: :user_id
end
