class ExpenseAllocator
  def initialize(group)
    @group = group
  end

  def split_expenses_evenly
    total = @group.transactions.sum(:amount)
    per_member = total / @group.members.count
    # Example logic to balance debts
  end
end