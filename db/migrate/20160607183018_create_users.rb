class CreateUsers < ActiveRecord::Migration
  def change
    #TO DO: REMOVE DROP TABLE
    drop_table :users
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
