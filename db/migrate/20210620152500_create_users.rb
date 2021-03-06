class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false, index: { unique: true }
      t.string :password_digest, null: false
      t.string :roll, null: false
      t.string :phonenumber, null: false
      t.datetime :archived_on

      t.timestamps
    end
  end
end
