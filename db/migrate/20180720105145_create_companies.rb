class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.references :country, foreign_key: true
      t.references :state, foreign_key: true
      t.references :city, foreign_key: true
      t.string :postcode
      t.datetime :start_date

      t.timestamps
    end
  end
end
