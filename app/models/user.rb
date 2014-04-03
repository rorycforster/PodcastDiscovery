class User < ActiveRecord::Base
    has_many :reviews, dependent: :destroy
    has_many :lists, dependent: :destroy
    has_many :list_items, through: :lists
    has_many :podcasts, through: :list_items

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true
    self.has_secure_password()
end