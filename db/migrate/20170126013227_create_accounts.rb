class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :title
      t.integer :agency
      t.integer :account_number
      t.decimal :balance
      t.decimal :balance_initial
      t.references :bank, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
