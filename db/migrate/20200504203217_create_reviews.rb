class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :star_rating
      t.string :restaurant_id
      t.string :user_id
    end
  end
end
