class Trip < ApplicationRecord
  belongs_to :user

  has_attached_file :image
  has_attached_file :image_one
  has_attached_file :image_two
  has_attached_file :image_three

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  attr_accessor :venue_holder

  validates :verified, presence: true
  validates :price, numericality: true, presence: true
  validates :destination, presence: true
  validates :startDate, presence: true
  validates :returnDate, presence: true

  serialize :https

end
