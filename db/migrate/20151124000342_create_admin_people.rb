class CreateAdminPeople < ActiveRecord::Migration
  def change
    create_table :admin_people do |t|
      t.string :name
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
