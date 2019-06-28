class CreateCollectionWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :collection_works do |t|
      t.references :work, null: false, foreign_key: true
      t.references :collection, null: false, foreign_key: true

      t.timestamps

      t.index [:work_id, :collection_id], unique: true
      t.index [:collection_id, :work_id], unique: true
    end
  end
end
