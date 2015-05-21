class DropPeople < ActiveRecord::Migration
  def change
    remove_reference :avatar_files, :person
    remove_reference :people, :role
    drop_table :people
  end
end
