class Ad < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many_attached :images
  before_create :randomize_id



  def randomize_id
    begin
      self.id = SecureRandom.random_number(1_000_000)
    end while Ad.where(id: self.id).exists?
  end
end
