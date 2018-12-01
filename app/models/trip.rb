class Trip < ApplicationRecord

  belongs_to :user

  validates :verified, type: boolean, presence: true
  validates :price, numericality: true, presence: true
  validates :destination, presence: true
  validates_date :startDate, presence: true
  validates_date :returnDate, presence: true
  
end
