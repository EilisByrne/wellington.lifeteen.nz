class MovePeopleAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :description, :text

    add_reference :users, :role, index: true, foreign_key: false
  end
end
