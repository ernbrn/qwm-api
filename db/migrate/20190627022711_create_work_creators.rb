class CreateWorkCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :work_creators do |t|
      t.integer :work_id, null: false
      t.integer :creator_id, null: false

      t.timestamps

      t.index :work_id
      t.index :creator_id
      t.index [:work_id, :creator_id], unique: true
      t.index [:creator_id, :work_id], unique: true
    end
  end
end
