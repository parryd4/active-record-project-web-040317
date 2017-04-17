class Book < ActiveRecord::Base
  belongs_to :category
  belongs_to :author
#  has_many :users, through: :checkouts
#  belongs_to :user
  has_many :checkouts
  has_many :users, through: :checkouts
end
