class Article < ApplicationRecord
  validates :content, presence: true
  # validates :content, length: { minimum: 2, maximum: 50 }

  belongs_to :user

end
