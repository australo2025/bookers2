class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy

  # 画像アップ用（ActiveStorageは導入済み）
  has_one_attached :image

  validates :name, presence: true
end