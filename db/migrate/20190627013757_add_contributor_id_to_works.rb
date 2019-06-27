class AddContributorIdToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :contributor_id, :integer, index: true
    add_foreign_key :works, :users, column: :contributor_id
  end
end
