class Ad < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many_attached :images
end
