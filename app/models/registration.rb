class Registration < ActiveRecord::Base
  validates :user_id, uniqueness: { scope: :activity_id, message: "User can only be enrolled for one activity." }

  belongs_to :user
  belongs_to :activity
end
