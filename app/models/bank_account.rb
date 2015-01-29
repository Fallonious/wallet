class BankAccount < ActiveRecord::Base

  validates :transaction_amount, presence: true
  validates :item_description, length: { maximum: 12 }

  def self.total
    total = 0
    BankAccount.all.each do |account|
      total += account.transaction_amount
    end
    return total
  end

  def Overdraft
    if @total_amount < 0
      puts "Put the shoes down and back away slowly. You don't have the funds."
    end
  end
end
