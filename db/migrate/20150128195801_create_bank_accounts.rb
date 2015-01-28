class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.date :transaction_on
      t.string :item_description
      t.float :transaction_amount

      t.timestamps null: false
    end
  end
end
