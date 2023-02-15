class CreateClothReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :cloth_reviews do |t|
      t.integer :user_id
      t.integer :cloth_id
      t.text :review

      t.timestamps
    end
  end
end
