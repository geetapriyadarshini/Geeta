class CreateNodes < ActiveRecord::Migration[5.2]
  def change
    create_table :nodes do |t|
      t.string :node_name
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
