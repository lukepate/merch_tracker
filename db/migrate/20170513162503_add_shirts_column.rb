class AddShirtsColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :shirts,  :name, :string
    add_column :shirts,  :picture, :string
    add_column :shirts,  :s, :string
    add_column :shirts,  :m, :string
    add_column :shirts,  :l, :string
    add_column :shirts,  :xl, :string
    add_column :shirts,  :twoxl, :string
    add_column :shirts,  :threexl, :string
    add_column :shirts,  :total, :string
    add_column :shirts,  :ordered, :string

    add_reference :shirts, :event_dates, foreign_key: true
  end
end
