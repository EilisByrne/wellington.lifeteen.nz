class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.references :role, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
