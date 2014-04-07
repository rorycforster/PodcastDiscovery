require 'spec_helper'

describe Review do
  it { should belong_to(:podcast) }
  it { should belong_to(:user) }
  it { should validate_presence_of(:nickname) }
  it { should validate_presence_of(:comment) }
end
