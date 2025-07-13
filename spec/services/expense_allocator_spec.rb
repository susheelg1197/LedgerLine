require 'rails_helper'

RSpec.describe ExpenseAllocator, type: :service do
  let(:group) { create(:group_with_transactions) }

  it 'allocates expenses per member' do
    result = ExpenseAllocator.new(group).allocate
    expect(result).to be_a(Hash)
  end
end