require 'spec_helper'

describe Podcast do
  it { should have_many(:reviews) }
  it { should have_many(:list_items) }
  it { should validate_presence_of(:name) }
end
