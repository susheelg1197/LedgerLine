class TransactionsController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @transactions = @group.transactions
  end

  def create
    @group = Group.find(params[:group_id])
    @transaction = @group.transactions.new(transaction_params)
    if @transaction.save
      redirect_to group_transactions_path(@group), notice: 'Transaction added.'
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:payer, :amount, :description)
  end
end