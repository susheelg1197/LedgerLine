class Transaction < ApplicationRecord
  belongs_to :group
  validates :amount, :payer, :description, presence: true
end