class AddEventsToShirts < ActiveRecord::Migration[5.0]
  def change
    add_reference :shirts, :events, foreign_key: true
  end
end
