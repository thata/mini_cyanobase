class CreateOrganisms < ActiveRecord::Migration[5.1]
  def change
    create_table :organisms do |t|
      t.string :data_source_name
      t.string :full_name
      t.integer :tax_id
      t.string :tax_lineage
      t.string :release_note

      t.timestamps
    end
  end
end
