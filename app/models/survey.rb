class Survey < ApplicationRecord
  has_many :questions

  before_save(:titleize_survey)

  private
    def titleize_survey
      self.title = self.title.titleize
    end
end