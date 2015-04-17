class CreateAvatarFiles < ActiveRecord::Migration
  def change
    create_table :avatar_files do |t|
      t.string :style
      t.references :person, index: true, foreign_key: true
      t.binary :file_contents

      t.timestamps null: false
    end
  end
end
