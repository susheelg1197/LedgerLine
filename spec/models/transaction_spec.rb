require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it { should validate_presence_of(:amount) }
  it { should belong_to(:group) }
end