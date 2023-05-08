class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :dni
      t.string :email
      t.string :password
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
