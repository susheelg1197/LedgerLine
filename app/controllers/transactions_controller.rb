class TransactionsController < ApplicationController
  before_action :set_group

  def index
    @transactions = @group.transactions.includes(:group)
  end

  def create
    @transaction = @group.transactions.new(transaction_params.merge(payer: current_user))
    if @transaction.save
      TransactionMailer.new_transaction(@transaction).deliver_later
      redirect_to group_transactions_path(@group), notice: 'Transaction recorded.'
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:amount, :description)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
end