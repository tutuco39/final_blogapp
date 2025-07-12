class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar

  def avatar_image
    if profile&.avatar&.attached?
      profile.avatar
    end
  end
  
end
