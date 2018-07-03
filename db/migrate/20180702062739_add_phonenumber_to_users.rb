class AddPhonenumberToUsers < ActiveRecord::Migration[5.2]
  def change
   add_column :users, :phonenumber, :integer, null: false, default: ""
 end
end
