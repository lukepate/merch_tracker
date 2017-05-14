class AddIdOfTour < ActiveRecord::Migration[5.0]
  def change
    add_column :events,  :id_of_tour, :string
    add_column :shirts,  :id_of_event, :string
  end
end
