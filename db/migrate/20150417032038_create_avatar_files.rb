class CreateAvatarFiles < ActiveRecord::Migration
  def change
    create_table :avatar_files do |t|
      t.string :style
      t.references :person, index: true, foreign_key: false
      t.binary :file_contents

      t.timestamps null: false
    end
  end
end
