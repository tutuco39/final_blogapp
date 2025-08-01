class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :account_name, presence: true
  validates :account_name, uniqueness: true

  validates :email, presence: true
  validates :password, presence: true

  has_many :articles, dependent: :destroy

  has_one :profile, dependent: :destroy
  has_one_attached :avatar



end
