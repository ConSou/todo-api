class List < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy

  validates :title, length: {minimum: 3}, presence: true
end
