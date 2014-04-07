require 'spec_helper'

describe List do
  it { should belong_to(:user) }
  it { should have_many(:list_items) }
  it { should validate_presence_of(:title) }
end
