class User < ApplicationRecord
  validates :username, presence: true, length: { in: 2..20 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }
end
