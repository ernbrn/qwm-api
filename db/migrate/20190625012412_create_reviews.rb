class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.boolean :public, default: nil
      t.text :body
      t.belongs_to :work, index: true

      t.timestamps
    end
  end
end
