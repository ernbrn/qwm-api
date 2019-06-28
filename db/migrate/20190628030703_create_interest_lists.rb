class CreateInterestLists < ActiveRecord::Migration[6.0]
  def change
    create_table :interest_lists do |t|
      t.string :name
      t.boolean :public
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
