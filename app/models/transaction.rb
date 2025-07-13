class Transaction < ApplicationRecord
  belongs_to :group
  validates :amount, :payer, :description, presence: true
  monetize :amount_cents
end