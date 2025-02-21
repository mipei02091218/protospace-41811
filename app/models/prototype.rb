class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  validates :title, :catch_copy, :concept, :image, presence: true
  has_one_attached :image
end
