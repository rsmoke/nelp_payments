# == Schema Information
#
# Table name: payments
#
#  id                 :bigint           not null, primary key
#  transaction_type   :string
#  transaction_status :string
#  transaction_id     :string
#  total_amount       :string
#  transaction_date   :string
#  account_type       :string
#  result_code        :string
#  result_message     :string
#  user_account       :string
#  payer_identity     :string
#  timestamp          :string
#  transaction_hash   :string
#  user_id            :bigint           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  program_year       :integer          not null
#
require 'rails_helper'

RSpec.describe Payment, type: :model do

  payment = FactoryBot.build(:payment)
  it 'has a transaction_id' do
    expect(payment).to be_valid
  end

  it 'has no transaction id' do
    payment.transaction_id = ''
    expect(payment).to_not be_valid
  end

end
