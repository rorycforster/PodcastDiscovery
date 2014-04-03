class List < ActiveRecord::Base
  belongs_to :user
  has_many :list_items, dependent: :destroy

  validates :title, presence: true
end
