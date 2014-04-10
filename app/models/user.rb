class User < ActiveRecord::Base
  has_many :registrations
  has_many :activities, through: :registrations

  has_many :planned_activities, class_name: "Activity"#, foreign_key: :user_id
end
