class CreateWorkCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :work_creators do |t|
      t.references :work, null: false, foreign_key: true
      t.references :creator, null: false, foreign_key: true

      t.timestamps

      t.index [:work_id, :creator_id], unique: true
      t.index [:creator_id, :work_id], unique: true
    end
  end
end
