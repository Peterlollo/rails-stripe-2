class CreatePayments < ActiveRecord::Migration
  def change
    #TO DO: REMOVE DROP TABLE
    drop_table :payments
    create_table :payments do |t|
      t.string :token
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
