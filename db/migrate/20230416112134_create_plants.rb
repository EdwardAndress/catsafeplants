class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :common_name
      t.string :latin_name
      t.boolean :cat_safe

      t.timestamps
    end
  end
end
