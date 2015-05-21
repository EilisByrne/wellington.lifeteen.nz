class ChangeAvatarFileToReferenceUser < ActiveRecord::Migration
  def change
    add_reference :avatar_files, :user, index: true, foreign_key: false
  end
end
