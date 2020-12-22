class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :avatar

  validates :title,
  presence: true

  validates :content,
  presence: true

  enum status: { :draft => 0, :published => 1 }

  scope :published, -> {where(status: "published") }
end
