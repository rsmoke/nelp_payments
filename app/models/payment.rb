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
class Payment < ApplicationRecord
  belongs_to :user
  validates :transaction_id, presence: true, uniqueness: true 
  validates :total_amount, presence: true 

  scope :current_program_payments, -> { where(program_year: ProgramSetting.active_program.last.program_year)}
end
