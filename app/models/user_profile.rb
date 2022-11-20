class UserProfile < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :state
  belongs_to :country
  has_one_attached :profile_image

end
