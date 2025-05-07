class User < ApplicationRecord
  has_many :posts

  validates :Name, presence: true, uniqueness: true
end
