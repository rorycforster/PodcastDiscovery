class Review < ActiveRecord::Base
  belongs_to :podcast
  belongs_to :user

  validates :nickname, presence: true
  validates :comment, presence: true
end
