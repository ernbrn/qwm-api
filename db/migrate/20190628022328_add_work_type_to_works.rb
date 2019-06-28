class AddWorkTypeToWorks < ActiveRecord::Migration[6.0]
  def change
    add_reference :works, :work_type, null: false, foreign_key: true
  end
end
