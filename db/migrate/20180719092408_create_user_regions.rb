class CreateUserRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_regions do |t|
      t.references :user, foreign_key: true
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
