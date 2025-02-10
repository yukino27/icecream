class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_one_attached :image
  def self.ransackable_attributes(auth_object = nil)
    ["body", "created_at", "detail", "flavor", "genre", "id", "id_value", "name", "price", "season", "updated_at", "user_id"]
  end
end
