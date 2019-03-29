class Like < ApplicationRecord
  belongs_to :user
  belongs_to :shout

  validates :user_id, uniqueness: { schope: :shout_id }
end
