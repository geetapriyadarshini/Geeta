class AddUser < ActiveRecord::Migration[5.2]
  def change
  		add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :company_id, :integer
    add_column :users, :user_role_id, :integer
    add_column :users, :start_date, :datetime
    add_column :users, :end_date, :datetime
    add_column :users, :monthly_charge, :float
    add_column :users, :notes, :blob
   

  end
end
