class CreateInterestListWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :interest_list_works do |t|
      t.references :interest_list, null: false, foreign_key: true
      t.references :work, null: false, foreign_key: true

      t.timestamps

      t.index [:work_id, :interest_list_id], unique: true
      t.index [:interest_list_id, :work_id], unique: true
    end
  end
end
