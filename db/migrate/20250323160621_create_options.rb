class CreateOptions < ActiveRecord::Migration[8.0]
  def change
    create_table :options do |t|
      t.string :name
      t.integer :votes

      t.timestamps
    end
  end
end
