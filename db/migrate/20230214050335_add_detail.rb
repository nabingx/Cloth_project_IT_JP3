class AddDetail < ActiveRecord::Migration[6.0]
  def change
      add_column :cloths, :detail, :text
  end
end
