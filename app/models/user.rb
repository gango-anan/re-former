class User < ApplicationRecord
  validates :username, :email, presence: true
end
