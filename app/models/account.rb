class Account < ActiveRecord::Base

  validates :title, presence: true
  validates :agency, presence: true
  validates :account_number, presence: true
  validates :balance, presence: true, length: { in: 2..12 }
  validates :balance_initial, presence: true, length: { in: 2..12 }
  validates :bank_id, presence: true


  belongs_to :bank
end
