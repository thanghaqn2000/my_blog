class AddSomeColumnsToAdmin < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :deleted_at, :datetime
    add_column :admins, :name, :string
    add_column :admins, :role, :integer
    add_column :admins, :phone_number, :string
    add_column :admins, :address, :string
  end
end
