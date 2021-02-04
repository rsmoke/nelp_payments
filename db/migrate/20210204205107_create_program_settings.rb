class CreateProgramSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :program_settings do |t|
      t.integer :program_year
      t.integer :application_fee, default: 0, null: false
      t.integer :program_fee, default: 0, null: false
      t.boolean :active, default: false
      t.datetime :program_open
      t.datetime :program_close
      t.text :open_instructions
      t.text :close_instructions
      t.text :payment_instructions
      t.boolean :allow_payments, default: false

      t.timestamps
    end
  end
end
