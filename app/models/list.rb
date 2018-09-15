class List < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :title, length: {minimum: 3}, presence: true
end
