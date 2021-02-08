class AddColumnToPayment < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :program_year, :integer, null: false
  end
end
