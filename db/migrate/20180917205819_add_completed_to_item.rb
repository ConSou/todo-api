class AddCompletedToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :completed, :boolean, default: false
  end
end
