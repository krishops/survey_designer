class Survey < ApplicationRecord
  has_many :questions

  validates :title, presence: true

  before_save(:titleize_survey)

  private
    def titleize_survey
      self.title = self.title.titleize
    end
end