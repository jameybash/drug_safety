class CreateCells < ActiveRecord::Migration[5.1]
  def change
    create_table :cells do |t|
      t.integer :drug_1_id
      t.integer :drug_2_id
      t.integer :categorization_id

      t.timestamps
    end
  end
end
