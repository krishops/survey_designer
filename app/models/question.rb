class Question < ApplicationRecord
  belongs_to :survey

  validates :inquiry, presence: true
end