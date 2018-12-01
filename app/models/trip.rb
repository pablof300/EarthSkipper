class Trip < ApplicationRecord

  belongs_to :user

  has_attached_file :image

  validates :verified, presence: true
  validates :price, numericality: true, presence: true
  validates :destination, presence: true
  validates :startDate, presence: true
  validates :returnDate, presence: true

  validates :user_id, presence: true
end
