class AddMessageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Message, :text
  end
end
