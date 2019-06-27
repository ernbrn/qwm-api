class AddUserAndWorkToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :user, null: false, foreign_key: true, index: true
    add_index :reviews, [:user_id, :work_id], unique: true
  end
end
