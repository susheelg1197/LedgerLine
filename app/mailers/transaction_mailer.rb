class TransactionMailer < ApplicationMailer
  def new_transaction(transaction)
    @transaction = transaction
    mail(to: transaction.group.users.map(&:email), subject: 'New Expense Added')
  end
end