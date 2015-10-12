class AddAttendeeToGirlsParties < ActiveRecord::Migration
  def change
    add_reference :girls_parties, :attendee, index:true
  end
end
