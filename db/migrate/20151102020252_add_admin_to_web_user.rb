class AddAdminToWebUser < ActiveRecord::Migration
  def change
    add_column :web_users, :Admin, :boolean
  end
end
