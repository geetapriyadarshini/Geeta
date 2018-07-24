class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :place_name
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
