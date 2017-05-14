class AddColumnsToEventsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :events,  :date, :string
    add_column :events,  :venue_name, :string
    add_column :events,  :address, :string
    add_column :events,  :compacity, :string
    add_column :events,  :attendance, :string
    add_column :events,  :settle, :string
    add_column :events,  :total, :string
    add_column :events,  :complete, :string

    add_reference :events, :tours, foreign_key: true

  end
end
