# == Schema Information
#
# Table name: program_settings
#
#  id                   :bigint           not null, primary key
#  program_year         :integer
#  application_fee      :integer          default(0), not null
#  program_fee          :integer          default(0), not null
#  active               :boolean          default(FALSE)
#  program_open         :datetime
#  program_close        :datetime
#  open_instructions    :text
#  close_instructions   :text
#  payment_instructions :text
#  allow_payments       :boolean          default(FALSE)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
FactoryBot.define do
  factory :program_setting do
    program_year { 1 }
    program_fee { 1 }
    active { false }
    program_open { "2021-02-04 20:51:07" }
    program_close { "2021-02-04 20:51:07" }
    application_fee { 1 }
    open_instructions { "MyText" }
    close_instructions { "MyText" }
    payment_instructions { "MyText" }
    allow_payments { "" }
  end
end
