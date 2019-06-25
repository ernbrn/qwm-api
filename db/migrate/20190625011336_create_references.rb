class CreateReferences < ActiveRecord::Migration[6.0]
  def change
    create_table :references do |t|
      t.text :note
      t.references :reference_to, polymorphic: true, index: true
      t.references :referenced_by, polymorphic: true, index: true

      t.timestamps
    end
  end
end
