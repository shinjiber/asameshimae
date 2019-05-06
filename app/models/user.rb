# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true, length: { minimum: 6 }
end
