class CreatePersonAvatars < ActiveRecord::Migration
  def self.up
    create_table :avatars do |t|
      t.integer    :person_id
      t.string     :style
      t.binary     :file_contents
    end
  end

  def self.down
    drop_table :avatars
  end
end
