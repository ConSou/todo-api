class Item < ApplicationRecord
  belongs_to :user
  belongs_to :list

  validates :title, length: {minimum: 3}, presence: true
end
