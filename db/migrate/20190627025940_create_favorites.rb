class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.boolean :public
      t.references :user, null: false, foreign_key: true
      t.references :favorable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
