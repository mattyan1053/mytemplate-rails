class CreateCats < ActiveRecord::Migration[8.0]
  def change
    create_table :cats do |t|
      t.string :name, null: false
      t.integer :age, null: false, unsigned: true

      t.timestamps
    end
  end
end
