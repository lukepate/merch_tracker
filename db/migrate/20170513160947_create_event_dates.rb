class CreateEventDates < ActiveRecord::Migration[5.0]
  def change
    create_table :event_dates do |t|

      t.timestamps
    end
  end
end
