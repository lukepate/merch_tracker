class AddFToTours < ActiveRecord::Migration[5.0]
  def change
    add_reference :tours, :user, foreign_key: true
  end
end
