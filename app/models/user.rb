class User < ApplicationRecord

  has_many :trips, dependent: :destroy

  before_save { self.email = email.downcase }
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username,
  presence: true,
  uniqueness: { case_sensitive: false},
  length: { minimum: 3, maximum: 25}

  validates :name,
  presence: true,
  uniqueness: { case_sensitive: false},
  length: { minimum: 3, maximum: 25}

  validates :lastname,
  presence: true,
  uniqueness: { case_sensitive: false},
  length: { minimum: 3, maximum: 25}

  validates :email,
  presence: true,
  format: { with: EMAIL_REGEX, message: "Your email is invalid" },
  length: { minimum: 3, maximum: 50}


  has_secure_password
end
