class Trip < ApplicationRecord
  belongs_to :user
  has_attached_file :image
  attr_accessor :venue_holder

  validates :verified, presence: true
  validates :price, numericality: true, presence: true
  validates :destination, presence: true
  validates :startDate, presence: true
  validates :returnDate, presence: true
end
