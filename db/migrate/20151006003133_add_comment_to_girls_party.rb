class AddCommentToGirlsParty < ActiveRecord::Migration
  def change
    add_column :girls_parties, :comment, :string
  end
end
