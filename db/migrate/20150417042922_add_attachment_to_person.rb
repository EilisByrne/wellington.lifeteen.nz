class AddAttachmentToPerson < ActiveRecord::Migration
  def change
    change_table :people do |t|
      t.attachment :avatar
    end
  end
end
