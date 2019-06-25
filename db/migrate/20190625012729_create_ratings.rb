class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.boolean :like, default: nil
      t.integer :severity
      t.belongs_to :work, index: true

      t.timestamps
    end
  end
end
