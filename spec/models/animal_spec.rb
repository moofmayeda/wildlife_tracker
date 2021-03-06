require 'spec_helper'

describe Animal do
  it {should have_many :sightings}
  it {should have_many :regions}
  it {should validate_presence_of :name}
end
