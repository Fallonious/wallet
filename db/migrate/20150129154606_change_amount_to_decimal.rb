class ChangeAmountToDecimal < ActiveRecord::Migration
  def change
    change_column(:bank_accounts, :transaction_amount, :decimal, precision: 7, scale: 2)
  end
end
