class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.integer :role, null: false
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
