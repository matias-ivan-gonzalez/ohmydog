class CreatePerros < ActiveRecord::Migration[7.0]
  def change
    create_table :perros do |t|
      t.string :name
      t.string :breed
      t.string :owner
      t.string :age
      t.float :weight
      t.date :birth_date
      t.binary :image

      t.timestamps
    end
  end
end
