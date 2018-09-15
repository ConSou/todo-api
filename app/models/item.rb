class Item < ApplicationRecord
  belongs_to :user

  validates :title, length: {minimum: 3}, presence: true
end
