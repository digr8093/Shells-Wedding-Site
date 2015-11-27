class AddEmailToAdminPerson < ActiveRecord::Migration
  def change

    add_column :admin_people, :email, :string
  end
end
