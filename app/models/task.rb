class Task < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user

  validates :title, :due_date, :description, presence: true
end
