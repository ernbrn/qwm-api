class CreateCreatorTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :creator_types do |t|
      t.string :name
      t.references :work_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
