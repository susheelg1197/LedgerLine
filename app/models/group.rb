class Group < ApplicationRecord
  has_many :transactions, dependent: :destroy
  has_many :users, through: :memberships
end