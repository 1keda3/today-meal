class Tweet < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :comments

  validates :title, length: { maximum: 20 }, presence: true
end
