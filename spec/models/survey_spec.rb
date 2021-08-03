require 'rails_helper'

describe Survey do
  it { should have_many(:questions) }

  it("titleizes the name of an survey") do
    survey = Survey.create({title: "cool survey"})
    expect(survey.title()).to(eq("Cool Survey"))
  end

end