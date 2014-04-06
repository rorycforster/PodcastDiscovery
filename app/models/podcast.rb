class Podcast < ActiveRecord::Base
  has_many :reviews
  has_many :list_items
  
  validates :name, presence: true

end
