class ExpenseAllocator
  def initialize(group)
    @group = group
  end

  def allocate
    totals = Hash.new(0)
    @group.transactions.each do |t|
      totals[t.payer_id] += t.amount_cents
    end
    # Logic to calculate net balances
    totals
  end
end