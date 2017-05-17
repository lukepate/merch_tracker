class AddImage < ActiveRecord::Migration[5.0]
  def change
    add_column :tours,  :images, :string
  end
end
