require 'spec_helper'

describe User do
  before do
    FactoryGirl.create(:user, password: "test", password_confirmation: "test")
  end
  it { should have_many(:reviews) }
  it { should have_many(:lists) }
  it { should have_many(:list_items).through(:lists) }
  it { should have_many(:podcasts).through(:list_items) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_uniqueness_of(:email) }

end
