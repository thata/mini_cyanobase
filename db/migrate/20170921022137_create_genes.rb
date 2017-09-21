class CreateGenes < ActiveRecord::Migration[5.1]
  def change
    create_table :genes do |t|
      t.references :organism, foreign_key: true
      t.string :gene_name
      t.string :chromosome_name
      t.integer :start_position
      t.integer :end_position
      t.string :orientation
      t.string :definition

      t.timestamps
    end
  end
end
