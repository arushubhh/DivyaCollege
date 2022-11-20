class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :college, null: false, foreign_key: true
      t.bigint :user_id
      t.json :review_matrix
      t.text :review_comment

      t.timestamps
    end
  end
end
