class AddEventsColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :event_dates,  :date, :string
    add_column :event_dates,  :venue_name, :string
    add_column :event_dates,  :address, :string
    add_column :event_dates,  :compacity, :string
    add_column :event_dates,  :attendance, :string
    add_column :event_dates,  :settle, :string
    add_column :event_dates,  :total, :string
    add_column :event_dates,  :complete, :string

    add_reference :event_dates, :tours, foreign_key: true

  end
end
