class CreateCloths < ActiveRecord::Migration[6.0]
  def change
    create_table :cloths do |t|
      t.string :title
      t.integer :number_of_cloths

      t.timestamps
    end
  end
end
