class CreateCategorizations < ActiveRecord::Migration[5.1]
  def change
    create_table :categorizations do |t|
      t.string :description
      t.string :color
      t.integer :scale

      t.timestamps
    end
  end
end
