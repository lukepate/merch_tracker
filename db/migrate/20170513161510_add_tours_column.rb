class AddToursColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :tours,  :name, :string
    add_column :tours,  :complete, :string
    add_column :tours,  :total, :integer

  end
end
