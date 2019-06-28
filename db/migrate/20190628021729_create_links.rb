class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :link
      t.string :link_text
      t.references :linkable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
