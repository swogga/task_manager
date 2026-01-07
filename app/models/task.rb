class Task < ApplicationRecord
  validates :title, presence: true, length: { maximum: 28 }
  belongs_to :user, optional: true
end
