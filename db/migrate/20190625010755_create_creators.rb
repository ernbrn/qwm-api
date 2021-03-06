class CreateCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :creators do |t|
      t.string :name

      t.timestamps
    end

    add_index :creators, :name, unique: true
  end
end
