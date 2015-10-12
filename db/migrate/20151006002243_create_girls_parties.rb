class CreateGirlsParties < ActiveRecord::Migration
  def change
    create_table :girls_parties do |t|
      t.boolean :rsvp
      t.string :venue
      t.datetime :date

      t.timestamps null: false
    end
  end
end
